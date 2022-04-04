#include <linux/types.h>
#include <linux/kernel.h>
#include <linux/delay.h>
#include <linux/ide.h>
#include <linux/init.h>
#include <linux/module.h>
#include <linux/errno.h>
#include <linux/gpio.h>
#include <asm/mach/map.h>
#include <asm/uaccess.h>
#include <asm/io.h>

/***************************************************************
File				: led.c
Author	  	: Luyao Han
Version	   	: V1.0
Description	: Driver for LED on IMX6ULL.
Log	   			: First Version Created V1.0 03-03-2020 by Luyao Han.
***************************************************************/

#define LED_MAJOR		200		// major device number 
#define LED_NAME		"led" 		// device name 

#define LEDOFF 	0				
#define LEDON 	1				
 
/** physical address of registers */
#define CCM_CCGR1_BASE				(0X020C406C)	
#define SW_MUX_GPIO1_IO03_BASE			(0X020E0068)
#define SW_PAD_GPIO1_IO03_BASE			(0X020E02F4)
#define GPIO1_DR_BASE				(0X0209C000)
#define GPIO1_GDIR_BASE				(0X0209C004)

/** virtual address of registers after mapping */
static void __iomem *IMX6U_CCM_CCGR1;
static void __iomem *SW_MUX_GPIO1_IO03;
static void __iomem *SW_PAD_GPIO1_IO03;
static void __iomem *GPIO1_DR;
static void __iomem *GPIO1_GDIR;

/**
 * @description		: Turn on/off LED.
 * @param - sta 	: LEDON(0) turns on the led; LEDOFF(1) turns off the led.
 * @return 			: None.
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

/**
 * @description		: open the led device.
 * @param - inode 	: inode to be passed on to the device.
 * @param - filp 	: file descriptor 设备文件，file结构体有个叫做private_data的成员变量
 * 					  一般在open的时候将private_data指向设备结构体。
 * @return 			: 0 success; otherwise failure.
 */
static int led_open(struct inode *inode, struct file *filp)
{
	return 0;
}


/**
 * @description		: read from led device
 * @param - filp 	: file descriptor
 * @param - buf 	: buffer to be returned to the user space
 * @param - cnt 	: # bytes of data to read
 * @param - offt 	: offset to head address
 * @return 			: number of bytes read, failure if negative.
 */
static ssize_t led_read(struct file *filp, char __user *buf, size_t cnt, loff_t *offt)
{
	return 0;
}

/**
 * @description		: write to the led device
 * @param - filp 	: device file descriptor to be opened
 * @param - buf 	: data to be written to the device
 * @param - cnt 	: #bytes of data to write
 * @param - offt 	: offset to head address相对于文件首地址的偏移
 * @return 			: #bytes written, failure if negative value.
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

	ledstat = databuf[0];		// capture status

	if (ledstat == LEDON) {	
		led_switch(LEDON);		// turn on led
	} else if (ledstat == LEDOFF) {
		led_switch(LEDOFF);	// turn off led
	}
	return 0;
}

/**
 * @description		: release led device
 * @param - filp 	: device file descriptor to be closed
 * @return 			: 0 success; otherwise failure
 */
static int led_release(struct inode *inode, struct file *filp)
{
	return 0;
}

/** devices operation structs */
static struct file_operations led_fops = {
	.owner = THIS_MODULE,
	.open = led_open,
	.read = led_read,
	.write = led_write,
	.release = 	led_release,
};

/**
 * @description	: driver exit
 * @param 		: None.
 * @return 		: None.
 */
static int __init led_init(void)
{
	int retvalue = 0;
	u32 val = 0;

	// Initialize LED.
	// 01. mapping address for the registers.
  IMX6U_CCM_CCGR1 = ioremap(CCM_CCGR1_BASE, 4);
	SW_MUX_GPIO1_IO03 = ioremap(SW_MUX_GPIO1_IO03_BASE, 4);
  SW_PAD_GPIO1_IO03 = ioremap(SW_PAD_GPIO1_IO03_BASE, 4);
	GPIO1_DR = ioremap(GPIO1_DR_BASE, 4);
	GPIO1_GDIR = ioremap(GPIO1_GDIR_BASE, 4);

	// 02. enable clock on GPIO1
	val = readl(IMX6U_CCM_CCGR1);
	val &= ~(3 << 26);	// reset
	val |= (3 << 26);	// set new value
	writel(val, IMX6U_CCM_CCGR1);

	// 03. enable alternative on GPIO1_IO03
	writel(5, SW_MUX_GPIO1_IO03);

	/*	
  SW_PAD_GPIO1_IO03 register IO configuration modes:
	bit 16:0 HYS turned off
	bit [15:14]: 00 default pull-down
	bit [13]: 0 kepper
	bit [12]: 1 pull/keeper enable
	bit [11]: 0 turn off open drain
	bit [7:6]: 10 100Mhz speed
	bit [5:3]: 110 R0/6 
	bit [0]: 0 low conversion rate.
	*/
	

	writel(0x10B0, SW_PAD_GPIO1_IO03);

	// 04. configure GPIO1_IO03 as output
	val = readl(GPIO1_GDIR);
	val &= ~(1 << 3);	// reset IO
	val |= (1 << 3);	// output
	writel(val, GPIO1_GDIR);

	// 05. turns off the led.
	val = readl(GPIO1_DR);
	val |= (1 << 3);	
	writel(val, GPIO1_DR);

	// 06. register the char device.
	retvalue = register_chrdev(LED_MAJOR, LED_NAME, &led_fops);
	if (retvalue < 0) {
		printk("-> register led driver failed!\r\n");
		return -EIO;
	} else {
		printk("-> led driver detected -- insmod success!\r\n");
	}
	return 0;
}

/**
 * @description	: driver exit
 * @param 		: None.
 * @return 		: None.
 */
static void __exit led_exit(void)
{
	// unmap the IOs. 
	iounmap(IMX6U_CCM_CCGR1);
	iounmap(SW_MUX_GPIO1_IO03);
	iounmap(SW_PAD_GPIO1_IO03);
	iounmap(GPIO1_DR);
	iounmap(GPIO1_GDIR);

	// unregister the char device. 
	unregister_chrdev(LED_MAJOR, LED_NAME);
}


module_init(led_init);
module_exit(led_exit);

MODULE_LICENSE("GPL");
MODULE_AUTHOR("luyaohan1001");
