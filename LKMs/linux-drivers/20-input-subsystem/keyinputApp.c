#include "stdio.h"
#include "unistd.h"
#include "sys/types.h"
#include "sys/stat.h"
#include "sys/ioctl.h"
#include "fcntl.h"
#include "stdlib.h"
#include "string.h"
#include <poll.h>
#include <sys/select.h>
#include <sys/time.h>
#include <signal.h>
#include <fcntl.h>
#include <linux/input.h>

/***************************************************************

File		: keyinputApp.c
Author	  	: Luyao Han <luyaohan1001@gmail.com>
Version	   	: V1.0
Description	   	: input子系统测试APP.
 usage	 ：./keyinputApp /dev/input/event1
***************************************************************/

// define 一个input_event变量，存放inputevent信息 
static struct input_event inputevent;

/*
 * @description		: main主程序
 * @param - argc 	: argvarray元素个数
 * @param - argv 	: 具体参数
 */
int main(int argc, char *argv[])
{
	int fd;
	int err = 0;
	char *filename;

	filename = argv[1];

	if (argc != 2) {
		printf("Error Usage!\r\n");
		return -1;
	}

	fd = open(filename, O_RDWR);
	if (fd < 0) {
		printf("Can't open file %s\r\n", filename);
		return -1;
	}

	while (1) {
		err = read(fd, &inputevent, sizeof(inputevent));
		if (err > 0) { // read data成功 
			switch (inputevent.type) {


				case EV_KEY:
					if (inputevent.code < BTN_MISC) { // 键盘键值 
						printf("key %d %s\r\n", inputevent.code, inputevent.value ? "press" : "release");
					} else {
						printf("button %d %s\r\n", inputevent.code, inputevent.value ? "press" : "release");
					}
					break;

				case EV_REL:
					break;
				case EV_ABS:
					break;
				case EV_MSC:
					break;
				case EV_SW:
					break;
			}
		} else {
			printf("read data失败\r\n");
		}
	}
	return 0;
}

