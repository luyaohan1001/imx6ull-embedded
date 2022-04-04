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
#include <linux/of_gpio.h>
#include <asm/mach/map.h>
#include <asm/uaccess.h>
#include <asm/io.h>
/***************************************************************

File		: gpioled.c
Author	  	: Luyao Han <luyaohan1001@gmail.com>
Version	   	: V1.0
Description	   	: 采用pinctrl和gpio子系统driverLED灯.
其他	   	: None
论坛 	   	: www.openedv.com
日志	   	: 初版V1.0 2019/7/13 Luyao Han <luyaohan1001@gmail.com>create
***************************************************************/
#define GPIOLED_CNT			1		  	/* device号个数 */
#define GPIOLED_NAME		"gpioled"	/* 名字 */
#define LEDOFF 				0			/* 关灯 */
#define LEDON 				1			/* 开灯 */

/* gpioleddevice结构体 */
struct gpioled_dev{
	dev_t devid;			/* device号 	 */
	struct cdev cdev;		/* cdev 	*/
	struct class *class;	/* 类 		*/
	struct device *device;	/* device 	 */
	int major;				/* 主device号	  */
	int minor;				/* 次device号   */
	struct device_node	*nd; /* device节点 */
	int led_gpio;			/* led所使用的GPIO编号		*/
};

struct gpioled_dev gpioled;	/* leddevice */

/*
 * @description		: opendevice
 * @param - inode 	: 传递给driver的inode
 * @param - filp 	: device文件，file结构体有个叫做private_data的成员变量
 * 					  一般在open的时候将private_data指向device结构体.
 * @return 			: 0 -- success; otherwise failed.
 */
static int led_open(struct inode *inode, struct file *filp)
{
	filp->private_data = &gpioled; /* configure私有数据 */
	return 0;
}

/*
 * @description		: 从device读取数据 
 * @param - filp 	: 要open的device文件(文件Description符)
 * @param - buf 	: 返回给用户空间的数据缓冲区
 * @param - cnt 	: 要读取的length of data
 * @param - offt 	: 相对于文件首地址的偏移
 * @return 			: 读取的字节数，如果为负值，表示读取失败
 */
static ssize_t led_read(struct file *filp, char __user *buf, size_t cnt, loff_t *offt)
{
	return 0;
}

/*
 * @description		: 向device写数据 
 * @param - filp 	: device文件，表示open的文件Description符
 * @param - buf 	: 要写给device写入的数据
 * @param - cnt 	: 要写入的length of data
 * @param - offt 	: 相对于文件首地址的偏移
 * @return 			: 写入的字节数，如果为负值，表示写入失败
 */
static ssize_t led_write(struct file *filp, const char __user *buf, size_t cnt, loff_t *offt)
{
	int retvalue;
	unsigned char databuf[1];
	unsigned char ledstat;
	struct gpioled_dev *dev = filp->private_data;

	retvalue = copy_from_user(databuf, buf, cnt);
	if (retvalue < 0) {
		printk("kernel write failed!\r\n");
		return -EFAULT;
	}

	ledstat = databuf[0];		/* getstatus值 */

	if (ledstat == LEDON) {	
		gpio_set_value(dev->led_gpio, 0);	/* openLED灯 */
	} else if (ledstat == LEDOFF) {
		gpio_set_value(dev->led_gpio, 1);	/* closeLED灯 */
	}
	return 0;
}

/*
 * @description		: close/releasedevice
 * @param - filp 	: 要close的device文件(文件Description符)
 * @return 			: 0 -- success; otherwise failed.
 */
static int led_release(struct inode *inode, struct file *filp)
{
	return 0;
}

/* device操作function */
static struct file_operations gpioled_fops = {
	.owner = THIS_MODULE,
	.open = led_open,
	.read = led_read,
	.write = led_write,
	.release = 	led_release,
};

/*
 * @description	: driver出口function
 * @param 		: None
 * @return 		: None
 */
static int __init led_init(void)
{
	int ret = 0;

	/* configureLED所使用的GPIO */
	/* 1.getdevice节点：gpioled */
	gpioled.nd = of_find_node_by_path("/gpioled");
	if (gpioled.nd == NULL) {
		printk("gpioled node not find!\r\n");
		return -EINVAL;
	} else {
		printk("gpioled node find!\r\n");
	}

	/* 2. getdevice树中的gpio属性，得到LED所使用的LED编号 */
	gpioled.led_gpio = of_get_named_gpio(gpioled.nd, "led-gpio", 0);
	if (gpioled.led_gpio < 0) {
		printk("can't get led-gpio");
		return -EINVAL;
	}
	printk("led-gpio num = %d\r\n", gpioled.led_gpio);

	/* 3.configureGPIO1_IO03为输出，并且输出高电平，默认closeLED灯 */
	ret = gpio_direction_output(gpioled.led_gpio, 1);
	if (ret < 0) {
		printk("can't set gpio!\r\n");
	}

	/* register字符devicedriver */
	/* 1.createdevice号 */
	if (gpioled.major) {		/*  define了device号 */
		gpioled.devid = MKDEV(gpioled.major, 0);
		register_chrdev_region(gpioled.devid, GPIOLED_CNT, GPIOLED_NAME);
	} else {						/* 没有definedevice号 */
		alloc_chrdev_region(&gpioled.devid, 0, GPIOLED_CNT, GPIOLED_NAME);	/* 申请device号 */
		gpioled.major = MAJOR(gpioled.devid);	/* get分配号的主device号 */
		gpioled.minor = MINOR(gpioled.devid);	/* get分配号的次device号 */
	}
	printk("gpioled major=%d,minor=%d\r\n",gpioled.major, gpioled.minor);	
	
	/* 2.initializecdev */
	gpioled.cdev.owner = THIS_MODULE;
	cdev_init(&gpioled.cdev, &gpioled_fops);
	
	/* 3.添加一个cdev */
	cdev_add(&gpioled.cdev, gpioled.devid, GPIOLED_CNT);

	/* 4.create类 */
	gpioled.class = class_create(THIS_MODULE, GPIOLED_NAME);
	if (IS_ERR(gpioled.class)) {
		return PTR_ERR(gpioled.class);
	}

	/* 5.createdevice */
	gpioled.device = device_create(gpioled.class, NULL, gpioled.devid, NULL, GPIOLED_NAME);
	if (IS_ERR(gpioled.device)) {
		return PTR_ERR(gpioled.device);
	}
	return 0;
}

/*
 * @description	: driver出口function
 * @param 		: None
 * @return 		: None
 */
static void __exit led_exit(void)
{
	/* unregister字符devicedriver */
	cdev_del(&gpioled.cdev);/*  删除cdev */
	unregister_chrdev_region(gpioled.devid, GPIOLED_CNT); /* unregisterdevice号 */

	device_destroy(gpioled.class, gpioled.devid);
	class_destroy(gpioled.class);
}

module_init(led_init);
module_exit(led_exit);
MODULE_LICENSE("GPL");
MODULE_AUTHOR("Luyao Han <luyaohan1001@gmail.com>");
