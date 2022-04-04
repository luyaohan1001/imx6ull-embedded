#include <linux/types.h>
#include <linux/kernel.h>
#include <linux/delay.h>
#include <linux/ide.h>
#include <linux/init.h>
#include <linux/module.h>

/***************************************************************
File 		: chrdevbase.c
Author	  	: Luyao Han
Version	   	: V1.0
Description   	: chrdevbase driver.
Log	   	: Initial commit V1.0 03-02-2022 by Luyao Han
***************************************************************/

#define CHRDEVBASE_MAJOR	200								// Major char device number
#define CHRDEVBASE_NAME		"chrdevbase" 			// char device name

static char readbuf[100];		// read buffer 
static char writebuf[100];		// write buffer 
static char kerneldata[] = {"kernel data!"};

/**
 * @description		: Open the device.
 * @param - inode 	: inode passed to the driver.
 * @param - filp 	: 设备文件，file结构体有个叫做private_data的成员变量
 * 					  一般在open的时候将private_data指向设备结构体。
 * @return 			: 0 success. Otherwise failure.
 */

static int chrdevbase_open(struct inode *inode, struct file *filp)
{
	//printk("chrdevbase open!\r\n");
	return 0;
}

/**
 * @description		: Read from the chr device.
 * @param - filp 	: File descriptor.
 * @param - buf 	: buffer zone that stores the data returning to the user.
 * @param - cnt 	: data length
 * @param - offt 	: offset to file start address.
 * @return 			: Numbers of bytes to be read, failure if a negative number.
 */
static ssize_t chrdevbase_read(struct file *filp, char __user *buf, size_t cnt, loff_t *offt)
{
	int retvalue = 0;
	
	// Send data to the user space.
	memcpy(readbuf, kerneldata, sizeof(kerneldata));
	retvalue = copy_to_user(buf, readbuf, cnt);
	if (retvalue == 0) {
		printk("kernel senddata ok!\r\n");
	} else {
		printk("kernel senddata failed!\r\n");
	}
	
	//printk("chrdevbase read!\r\n");
	return 0;
}

/**
 * @description		: Write to the char device.
 * @param - filp 	: 设备文件，表示打开的文件描述符
 * @param - buf 	: 要写给设备写入的数据
 * @param - cnt 	: 要写入的数据长度
 * @param - offt 	: 相对于文件首地址的偏移
 * @return 			: Number of bytes to write, failure if a negative number.
 */
static ssize_t chrdevbase_write(struct file *filp, const char __user *buf, size_t cnt, loff_t *offt)
{
	int retvalue = 0;
	// Print the data received from the user space.
	retvalue = copy_from_user(writebuf, buf, cnt);
	if (retvalue == 0) {
		printk("kernel recevdata:%s\r\n", writebuf);
	} else {
		printk("kernel recevdata failed!\r\n");
	}
	
	//printk("chrdevbase write!\r\n");
	return 0;
}

/**
 * @description		: Release the char device.
 * @param - filp 	: 要关闭的设备文件(文件描述符)
 * @return 			: 0 success. Otherwise failure.
 */
static int chrdevbase_release(struct inode *inode, struct file *filp)
{
	//printk("chrdevbase release！\r\n");
	return 0;
}


/**
 * 设备操作函数结构体
 */
static struct file_operations chrdevbase_fops = {
	.owner = THIS_MODULE,	
	.open = chrdevbase_open,
	.read = chrdevbase_read,
	.write = chrdevbase_write,
	.release = chrdevbase_release,
};

/**
 * @description	: driver entry.
 * @param 		: None.
 * @return 		: 0 success; others failure.
 */
static int __init chrdevbase_init(void)
{
	int ret = 0;

	// Register the char device.
	ret = register_chrdev(CHRDEVBASE_MAJOR, CHRDEVBASE_NAME, &chrdevbase_fops);
	if (ret < 0) {
		printk("chrdevbase driver register failed\r\n");
	}
	printk("-> char device driver detected -- insmod success!\r\n");
	return 0;
}

/**
 * @description	: driver exit
 * @param 		: None.
 * @return 		: None.
 */
static void __exit chrdevbase_exit(void)
{
	// Unregister the char device driver.
	unregister_chrdev(CHRDEVBASE_MAJOR, CHRDEVBASE_NAME);
	printk("-> char device driver gone -- rmmod success!\r\n");
}

/**
 * Register module init and exit functions.
 */
module_init(chrdevbase_init);
module_exit(chrdevbase_exit);

/**
 * license and authors.
 */
MODULE_LICENSE("GPL");
MODULE_AUTHOR("luyaohan1001");


