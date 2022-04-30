#include <linux/types.h>
#include <linux/kernel.h>
#include <linux/delay.h>
#include <linux/ide.h>
#include <linux/init.h>
#include <linux/module.h>
#include <linux/errno.h>
#include <linux/gpio.h>
#include <linux/cdev.h>
#include <linux/device.h>
#include <linux/of.h>
#include <linux/of_address.h>
#include <asm/mach/map.h>
#include <asm/uaccess.h>
#include <asm/io.h>

/***************************************************************

File		: dtsled.c
Author	  	: Luyao Han <luyaohan1001@gmail.com>
Version	   	: V1.0
Description	   	: LED driver through device tree.

***************************************************************/

#define DTSLED_CNT			1		  		// device号个数 
#define DTSLED_NAME			"dtsled"	// 名字 
#define LEDOFF 					0			// 关灯 
#define LEDON 					1			// 开灯 

// 映射后的寄存器虚拟地址指针 
static void __iomem *IMX6U_CCM_CCGR1;
static void __iomem *SW_MUX_GPIO1_IO03;
static void __iomem *SW_PAD_GPIO1_IO03;
static void __iomem *GPIO1_DR;
static void __iomem *GPIO1_GDIR;


// dtsled device structure
struct dtsled_dev{
	dev_t devid;						// device号 	 
	struct cdev cdev;				// cdev 	
	struct class *class;		// 类 		
	struct device *device;	// device 	 
	int major;							// 主device号	  
	int minor;							// 次device号   
	struct device_node	*nd; // device节点 
};

struct dtsled_dev dtsled;	// led device instance


/*
 * @description		: LED open/close
 * @param - sta 	: LEDON(0) open LED，LEDOFF(1) close LED
 * @return 			: None
 */
void led_switch(u8 sta)
{
	u32 val = 0;
	if (sta == LEDON) {
		val = readl(GPIO1_DR);
		val &= ~(1 << 3);	
		writel(val, GPIO1_DR);
	}else if (sta == LEDOFF) {
		val = readl(GPIO1_DR);
		val|= (1 << 3);	
		writel(val, GPIO1_DR);
	}	
}

/*
 * @description		: opendevice
 * @param - inode 	: 传递给driver的inode
 * @param - filp 	: deviceFile，file结构体有个叫做private_data的成员变量
 * 					  一般在open的时候将private_data指向device结构体.
 * @return 			: 0 -- success; otherwise failed.
 */
static int led_open(struct inode *inode, struct file *filp)
{
	filp->private_data = &dtsled; /* configure私有数据 */
	return 0;
}

/*
 * @description		: 从device读取数据 
 * @param - filp 	: 要open的deviceFile(FileDescription符)
 * @param - buf 	: 返回给用户空间的数据缓冲区
 * @param - cnt 	: 要读取的length of data
 * @param - offt 	: 相对于File首地址的偏移
 * @return 			: 读取的字节数，如果为负值，表示读取失败
 */
static ssize_t led_read(struct file *filp, char __user *buf, size_t cnt, loff_t *offt)
{
	return 0;
}

/*
 * @description		: 向device写数据 
 * @param - filp 	: deviceFile，表示open的FileDescription符
 * @param - buf 	: 要写给device写入的数据
 * @param - cnt 	: 要写入的length of data
 * @param - offt 	: 相对于File首地址的偏移
 * @return 			: 写入的字节数，如果为负值，表示写入失败
 */
static ssize_t led_write(struct file *filp, const char __user *buf, size_t cnt, loff_t *offt)
{
	int retvalue;
	unsigned char databuf[1];
	unsigned char ledstat;

	retvalue = copy_from_user(databuf, buf, cnt);
	if (retvalue < 0) {
		printk("kernel write failed!\r\n");
		return -EFAULT;
	}

	ledstat = databuf[0];				// getstatus值 

	if (ledstat == LEDON) {	
		led_switch(LEDON);				// openLED灯 
	} else if (ledstat == LEDOFF) {
		led_switch(LEDOFF);				// closeLED灯 
	}
	return 0;
}

/*
 * @description		: close/release device
 * @param - filp 	: file to close (file descriptor)
 * @return 			: 0 -- success; otherwise failed.
 */
static int led_release(struct inode *inode, struct file *filp)
{
	return 0;
}

/* device operations */
static struct file_operations dtsled_fops = {
	.owner = THIS_MODULE,
	.open = led_open,
	.read = led_read,
	.write = led_write,
	.release = 	led_release,
};

/*
 * @description	: driver exit function
 * @param 		: None
 * @return 		: None
 */
static int __init led_init(void)
{
	u32 val = 0;
	int ret;
	u32 regdata[14];
	const char *str;
	struct property *proper;

	// getdevice树中的属性数据 

	// 1.getdevice节点：luyaohan1001-led 
	dtsled.nd = of_find_node_by_path("/luyaohan1001-led"); // find the nodes in /proc/device-tree
	if (dtsled.nd == NULL) {
		printk("alphaled node not found in device-tree (Check /proc/device-tree)!\r\n");
		return -EINVAL;
	} else {
		printk("alphaled node find!\r\n");
	}

	// 2.getcompatible属性内容 
	proper = of_find_property(dtsled.nd, "compatible", NULL);
	if (proper == NULL) {
		printk("compatible property find failed\r\n");
	} else {
		printk("compatible = %s\r\n", (char*)proper->value);
	}

	// 3.get status属性内容 
	ret = of_property_read_string(dtsled.nd, "status", &str);
	if (ret < 0) {
		printk("status read failed!\r\n");
	} else {
		printk("status = %s\r\n",str);
	}

	// 4.get reg属性内容 
	ret = of_property_read_u32_array(dtsled.nd, "reg", regdata, 10);
	if (ret < 0) {
		printk("reg property read failed!\r\n");
	} else {
		u8 i = 0;
		printk("reg data:\r\n");
		for(i = 0; i < 10; i++)
			printk("%#X ", regdata[i]);
		printk("\r\n");
	}

	// initialize LED 
#if 0
	// 1.寄存器地址映射 
	IMX6U_CCM_CCGR1 = ioremap(regdata[0], regdata[1]);
	SW_MUX_GPIO1_IO03 = ioremap(regdata[2], regdata[3]);
  	SW_PAD_GPIO1_IO03 = ioremap(regdata[4], regdata[5]);
	GPIO1_DR = ioremap(regdata[6], regdata[7]);
	GPIO1_GDIR = ioremap(regdata[8], regdata[9]);
#else
	IMX6U_CCM_CCGR1 = of_iomap(dtsled.nd, 0);
	SW_MUX_GPIO1_IO03 = of_iomap(dtsled.nd, 1);
  	SW_PAD_GPIO1_IO03 = of_iomap(dtsled.nd, 2);
	GPIO1_DR = of_iomap(dtsled.nd, 3);
	GPIO1_GDIR = of_iomap(dtsled.nd, 4);
#endif

	// 2.enable GPIO1 clock 
	val = readl(IMX6U_CCM_CCGR1);
	val &= ~(3 << 26);	/* 清楚以前的configure */
	val |= (3 << 26);	/* configure新值 */
	writel(val, IMX6U_CCM_CCGR1);

	// 3.configureGPIO1_IO03的复用功能，将其复用为
	//    GPIO1_IO03，最后configureIO属性.
	 
	writel(5, SW_MUX_GPIO1_IO03);
	
	/*寄存器SW_PAD_GPIO1_IO03configureIO属性
	 *bit 16:0 HYSclose
	 *bit [15:14]: 00 默认下拉
     *bit [13]: 0 kepper功能
     *bit [12]: 1 pull/keeperenable
     *bit [11]: 0 close开路输出
     *bit [7:6]: 10 速度100Mhz
     *bit [5:3]: 110 R0/6driver能力
     *bit [0]: 0 低转换率
	 */
	writel(0x10B0, SW_PAD_GPIO1_IO03);

	// 4.configure GPIO1_IO03 as output mode
	val = readl(GPIO1_GDIR);
	val &= ~(1 << 3);	// 清除以前的configure 
	val |= (1 << 3);	// configure为输出 
	writel(val, GPIO1_GDIR);

	// 5.turn off LED by default
	val = readl(GPIO1_DR);
	val |= (1 << 3);	
	writel(val, GPIO1_DR);

	// register char-device driver 
	// 1.createdevice号 
	if (dtsled.major) {		//  define device major number */
		dtsled.devid = MKDEV(dtsled.major, 0);
		register_chrdev_region(dtsled.devid, DTSLED_CNT, DTSLED_NAME);
	} else {						// if there's no defined device number */
		alloc_chrdev_region(&dtsled.devid, 0, DTSLED_CNT, DTSLED_NAME);	// request a device number
		dtsled.major = MAJOR(dtsled.devid);	// get the major device number allocated
		dtsled.minor = MINOR(dtsled.devid);	// get the minor device  number allocated
	}
	printk("dtsled device number allocated: major=%d,minor=%d\r\n",dtsled.major, dtsled.minor);	
	
	// 2.initializecdev 
	dtsled.cdev.owner = THIS_MODULE;
	cdev_init(&dtsled.cdev, &dtsled_fops);
	
	// 3.添加一个cdev 
	cdev_add(&dtsled.cdev, dtsled.devid, DTSLED_CNT);

	// 4. Create device
	dtsled.class = class_create(THIS_MODULE, DTSLED_NAME);
	if (IS_ERR(dtsled.class)) {
		return PTR_ERR(dtsled.class);
	}

	// 5.create device 
	dtsled.device = device_create(dtsled.class, NULL, dtsled.devid, NULL, DTSLED_NAME);
	if (IS_ERR(dtsled.device)) {
		return PTR_ERR(dtsled.device);
	}
	
	return 0;
}

/*
 * @description	: driver exit function
 * @param 		: None
 * @return 		: None
 */
static void __exit led_exit(void)
{
	// cancel mapping
	iounmap(IMX6U_CCM_CCGR1);
	iounmap(SW_MUX_GPIO1_IO03);
	iounmap(SW_PAD_GPIO1_IO03);
	iounmap(GPIO1_DR);
	iounmap(GPIO1_GDIR);

	/* unregister char-device driver */
	cdev_del(&dtsled.cdev);	// delete cdev
	unregister_chrdev_region(dtsled.devid, DTSLED_CNT); // unregister device numeber

	device_destroy(dtsled.class, dtsled.devid);
	class_destroy(dtsled.class);
}

module_init(led_init);
module_exit(led_exit);
MODULE_LICENSE("GPL");
MODULE_AUTHOR("Luyao Han <luyaohan1001@gmail.com>");
