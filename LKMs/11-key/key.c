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
#include <linux/semaphore.h>
#include <asm/mach/map.h>
#include <asm/uaccess.h>
#include <asm/io.h>
/***************************************************************

File		: key.c
Author	  	: Luyao Han <luyaohan1001@gmail.com>
Version	   	: V1.0
Description	   	: Linux driver for key-press experiment
***************************************************************/
#define KEY_CNT			1		// key count
#define KEY_NAME		"key"	//  name 		

// define  key值 
#define KEY0VALUE		0XF0	//  key值 		
#define INVAKEY			0X00	//  invalid的 key值  

// keydevice struct 
struct key_dev{
	dev_t devid;			// device number  	 
	struct cdev cdev;		// cdev 	
	struct class *class;	//  class 		
	struct device *device;	// device  	 
	int major;				// 主device number 	  
	int minor;				// 次device number    
	struct device_node	*nd; // device  node 
	int key_gpio;			// key所使用的GPIO编number 		
	atomic_t keyvalue;		//  key值 			
};

struct key_dev keydev;		// keydevice  

/*
 * @description	: initialize  keyIO，openfunctionopen driver 的时候
 * 				  initialize  key所使用的GPIO引脚.
 * @param 		:  None
 * @return 		:  None
 */
static int keyio_init(void)
{
	keydev.nd = of_find_node_by_path("/key");
	if (keydev.nd== NULL) {
		return -EINVAL;
	}

	keydev.key_gpio = of_get_named_gpio(keydev.nd ,"key-gpio", 0);
	if (keydev.key_gpio < 0) {
		printk("can't get key0\r\n");
		return -EINVAL;
	}
	printk("key_gpio=%d\r\n", keydev.key_gpio);
	
	// initialize key所使用的IO 
	gpio_request(keydev.key_gpio, "key0");	// 请求IO 
	gpio_direction_input(keydev.key_gpio);	// configure 为 input 
	return 0;
}

/*
 * @description		: open device 
 * @param - inode 	: 传递给driver 的inode
 * @param - filp 	: device 文件，filestruct有个叫做private_data的成员变量
 * 					  一般在open的时候将private_data指向device struct.
 */
static int key_open(struct inode *inode, struct file *filp)
{
	int ret = 0;
	filp->private_data = &keydev; 	// configure 私有 data 

	ret = keyio_init();				// initialize  keyIO 
	if (ret < 0) {
		return ret;
	}

	return 0;
}

/*
 * @description		: 从device read  data 
 * @param - filp 	: 要open 的device 文件(文件Description符)
 * @param - buf 	: 返回给用户空间的 data缓冲区
 * @param - cnt 	: 要read 的 data长度
 * @param - offt 	: 相对于文件首地址的偏移
 * @return 			: read 的字节数，如果为负值，表示read  failure
 */
static ssize_t key_read(struct file *filp, char __user *buf, size_t cnt, loff_t *offt)
{
	int ret = 0;
	int value;
	struct key_dev *dev = filp->private_data;

	if (gpio_get_value(dev->key_gpio) == 0) { 		// key0按下 
		while(!gpio_get_value(dev->key_gpio));		// 等待 keyrelease  
		atomic_set(&dev->keyvalue, KEY0VALUE);	
	} else {	
		atomic_set(&dev->keyvalue, INVAKEY);		//  invalid的 key值 
	}

	value = atomic_read(&dev->keyvalue);
	ret = copy_to_user(buf, &value, sizeof(value));
	return ret;
}

/*
 * @description		: 向device 写 data 
 * @param - filp 	: device 文件，表示open 的文件Description符
 * @param - buf 	: 要写给device 写入的 data
 * @param - cnt 	: 要写入的 data长度
 * @param - offt 	: 相对于文件首地址的偏移
 * @return 			: 写入的字节数，如果为负值，表示写入 failure
 */
static ssize_t key_write(struct file *filp, const char __user *buf, size_t cnt, loff_t *offt)
{
	return 0;
}

/*
 * @description		: close /release device 
 * @param - filp 	: 要close 的device 文件(文件Description符)
 */
static int key_release(struct inode *inode, struct file *filp)
{
	return 0;
}

// device 操作function 
static struct file_operations key_fops = {
	.owner = THIS_MODULE,
	.open = key_open,
	.read = key_read,
	.write = key_write,
	.release = 	key_release,
};

/*
 * @description	: driver entry function
 * @param 		:  None
 * @return 		:  None
 */
static int __init mykey_init(void)
{
	// initialize 原子变量 
	atomic_set(&keydev.keyvalue, INVAKEY);

	// register 字符device driver  
	// 1.create device number  
	if (keydev.major) {		//  define 了device number  
		keydev.devid = MKDEV(keydev.major, 0);
		register_chrdev_region(keydev.devid, KEY_CNT, KEY_NAME);
	} else {						// 没有define device number  
		alloc_chrdev_region(&keydev.devid, 0, KEY_CNT, KEY_NAME);	// 申请device number  
		keydev.major = MAJOR(keydev.devid);	// get 分配number 的主device number  
		keydev.minor = MINOR(keydev.devid);	// get 分配number 的次device number  
	}
	
	// 2.initialize cdev 
	keydev.cdev.owner = THIS_MODULE;
	cdev_init(&keydev.cdev, &key_fops);
	
	// 3.add 一个cdev 
	cdev_add(&keydev.cdev, keydev.devid, KEY_CNT);

	// 4.create  class 
	keydev.class = class_create(THIS_MODULE, KEY_NAME);
	if (IS_ERR(keydev.class)) {
		return PTR_ERR(keydev.class);
	}

	// 5.create device  
	keydev.device = device_create(keydev.class, NULL, keydev.devid, NULL, KEY_NAME);
	if (IS_ERR(keydev.device)) {
		return PTR_ERR(keydev.device);
	}
	
	return 0;
}

/*
 * @description	: driver exit function
 * @param 		:  None
 * @return 		:  None
 */
static void __exit mykey_exit(void)
{
	// unregister 字符device driver  
	cdev_del(&keydev.cdev);//  delete cdev 
	unregister_chrdev_region(keydev.devid, KEY_CNT); // unregister device number  

	device_destroy(keydev.class, keydev.devid);
	class_destroy(keydev.class);
}

module_init(mykey_init);
module_exit(mykey_exit);
MODULE_LICENSE("GPL");
MODULE_AUTHOR("Luyao Han <luyaohan1001@gmail.com>");
