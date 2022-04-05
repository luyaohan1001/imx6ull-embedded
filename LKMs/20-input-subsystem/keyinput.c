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
#include <linux/input.h>
#include <linux/semaphore.h>
#include <linux/timer.h>
#include <linux/of_irq.h>
#include <linux/irq.h>
#include <asm/mach/map.h>
#include <asm/uaccess.h>
#include <asm/io.h>
/***************************************************************

File		: keyinput.c
Author	  	: Luyao Han <luyaohan1001@gmail.com>
Version	   	: V1.0
Description	   	: Linux keyinput子系统 experiment
***************************************************************/
#define KEYINPUT_CNT		1			// device 号个数 	
#define KEYINPUT_NAME		"keyinput"	//  name 		
#define KEY0VALUE			0X01		// KEY0 key值 	
#define INVAKEY				0XFF		//  invalid的 key值 
#define KEY_NUM				1			//  key amount 	

// interruptIODescriptionstruct 
struct irq_keydesc {
	int gpio;								// gpio 
	int irqnum;								// interrupt号     
	unsigned char value;					//  key对应的键值 
	char name[10];							//  name 
	irqreturn_t (*handler)(int, void *);	// interrupt服务function 
};

// keyinputdevice struct 
struct keyinput_dev{
	dev_t devid;			// device 号 	 
	struct cdev cdev;		// cdev 	
	struct class *class;	//  class 		
	struct device *device;	// device  	 
	struct device_node	*nd; // device  node 
	struct timer_list timer;// define 一个timer
	struct irq_keydesc irqkeydesc[KEY_NUM];	//  keyDescription array 
	unsigned char curkeynum;				// 当前的 key号 
	struct input_dev *inputdev;		// inputstruct 
};

struct keyinput_dev keyinputdev;	// key inputdevice  

/* @description		: interrupt服务function，turn on timer，延时10ms，
 *				  	  timer用于 key消抖.
 * @param - irq 	: interrupt号 
 * @param - dev_id	: device 结构.
 * @return 			: interrupt执行结果
 */
static irqreturn_t key0_handler(int irq, void *dev_id)
{
	struct keyinput_dev *dev = (struct keyinput_dev *)dev_id;

	dev->curkeynum = 0;
	dev->timer.data = (volatile long)dev_id;
	mod_timer(&dev->timer, jiffies + msecs_to_jiffies(10));	// 10ms定时 
	return IRQ_RETVAL(IRQ_HANDLED);
}

/* @description	: timer服务function，用于 key消抖，timer到了以后
 *				  再次read  key值，如果 key还是处于按下status就表示 key有效.
 * @param - arg	: device 结构变量
 * @return 		:  None
 */
void timer_function(unsigned long arg)
{
	unsigned char value;
	unsigned char num;
	struct irq_keydesc *keydesc;
	struct keyinput_dev *dev = (struct keyinput_dev *)arg;

	num = dev->curkeynum;
	keydesc = &dev->irqkeydesc[num];
	value = gpio_get_value(keydesc->gpio); 	// read IO值 
	if (value == 0) { 						// 按下 key 
		//  report key值 
		//input_event(dev->inputdev, EV_KEY, keydesc->value, 1);
		input_report_key(dev->inputdev, keydesc->value, 1);//  last一个参数表示按下还是松开，1为按下，0为松开 
		input_sync(dev->inputdev);
	} else { 									//  key松开 
		//input_event(dev->inputdev, EV_KEY, keydesc->value, 0);
		input_report_key(dev->inputdev, keydesc->value, 0);
		input_sync(dev->inputdev);
	}	
}

/*
 * @description	:  keyIOinitialize 
 * @param 		:  None
 * @return 		:  None
 */
static int keyio_init(void)
{
	unsigned char i = 0;
	char name[10];
	int ret = 0;
	
	keyinputdev.nd = of_find_node_by_path("/key");
	if (keyinputdev.nd== NULL) {
		printk("key node not find!\r\n");
		return -EINVAL;
	} 

	// 提取GPIO 
	for (i = 0; i < KEY_NUM; i++) {
		keyinputdev.irqkeydesc[i].gpio = of_get_named_gpio(keyinputdev.nd ,"key-gpio", i);
		if (keyinputdev.irqkeydesc[i].gpio < 0) {
			printk("can't get key%d\r\n", i);
		}
	}
	
	// initialize key所使用的IO，并且configure 成interrupt模式 
	for (i = 0; i < KEY_NUM; i++) {
		memset(keyinputdev.irqkeydesc[i].name, 0, sizeof(name));	// 缓冲区清零 
		sprintf(keyinputdev.irqkeydesc[i].name, "KEY%d", i);		// 组合 name 
		gpio_request(keyinputdev.irqkeydesc[i].gpio, name);
		gpio_direction_input(keyinputdev.irqkeydesc[i].gpio);	
		keyinputdev.irqkeydesc[i].irqnum = irq_of_parse_and_map(keyinputdev.nd, i);
	}
	// 申请interrupt 
	keyinputdev.irqkeydesc[0].handler = key0_handler;
	keyinputdev.irqkeydesc[0].value = KEY_0;
	
	for (i = 0; i < KEY_NUM; i++) {
		ret = request_irq(keyinputdev.irqkeydesc[i].irqnum, keyinputdev.irqkeydesc[i].handler, 
		                 IRQF_TRIGGER_FALLING|IRQF_TRIGGER_RISING, keyinputdev.irqkeydesc[i].name, &keyinputdev);
		if (ret < 0) {
			printk("irq %d request failed!\r\n", keyinputdev.irqkeydesc[i].irqnum);
			return -EFAULT;
		}
	}

	// create timer 
	init_timer(&keyinputdev.timer);
	keyinputdev.timer.function = timer_function;

	// 申请input_dev 
	keyinputdev.inputdev = input_allocate_device();
	keyinputdev.inputdev->name = KEYINPUT_NAME;
#if 0
	// initialize input_dev，configure 产生哪些 event 
	__set_bit(EV_KEY, keyinputdev.inputdev->evbit);	// configure 产生 key event          
	__set_bit(EV_REP, keyinputdev.inputdev->evbit);	// 重复 event，比如按下去不放开，就会一直 output信息 		 

	// initialize input_dev，configure 产生哪些 key 
	__set_bit(KEY_0, keyinputdev.inputdev->keybit);	
#endif

#if 0
	keyinputdev.inputdev->evbit[0] = BIT_MASK(EV_KEY) | BIT_MASK(EV_REP);
	keyinputdev.inputdev->keybit[BIT_WORD(KEY_0)] |= BIT_MASK(KEY_0);
#endif

	keyinputdev.inputdev->evbit[0] = BIT_MASK(EV_KEY) | BIT_MASK(EV_REP);
	input_set_capability(keyinputdev.inputdev, EV_KEY, KEY_0);

	// register  inputdevice  
	ret = input_register_device(keyinputdev.inputdev);
	if (ret) {
		printk("register input device failed!\r\n");
		return ret;
	}
	return 0;
}

/*
 * @description	: driver entry function
 * @param 		:  None
 * @return 		:  None
 */
static int __init keyinput_init(void)
{
	keyio_init();
	return 0;
}

/*
 * @description	: driver exit function
 * @param 		:  None
 * @return 		:  None
 */
static void __exit keyinput_exit(void)
{
	unsigned int i = 0;
	// delete timer 
	del_timer_sync(&keyinputdev.timer);	// delete timer 
		
	// release interrupt 
	for (i = 0; i < KEY_NUM; i++) {
		free_irq(keyinputdev.irqkeydesc[i].irqnum, &keyinputdev);
	}
	// release input_dev 
	input_unregister_device(keyinputdev.inputdev);
	input_free_device(keyinputdev.inputdev);
}

module_init(keyinput_init);
module_exit(keyinput_exit);
MODULE_LICENSE("GPL");
MODULE_AUTHOR("Luyao Han <luyaohan1001@gmail.com>");
