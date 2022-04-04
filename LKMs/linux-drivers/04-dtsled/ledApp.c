#include "stdio.h"
#include "unistd.h"
#include "sys/types.h"
#include "sys/stat.h"
#include "fcntl.h"
#include "stdlib.h"
#include "string.h"
/***************************************************************

File		: ledApp.c
Author	  	: Luyao Han <luyaohan1001@gmail.com>
Version	   	: V1.0
Description	   	: chrdevbase驱测试APP.
其他	   	: None
usage	 ：./ledtest /dev/led  0 closeLED
		     ./ledtest /dev/led  1 openLED		
***************************************************************/

#define LEDOFF 	0
#define LEDON 	1

/*
 * @description		: main主程序
 * @param - argc 	: argv数组元素个数
 * @param - argv 	: 具体参数
 * @return 			: 0 -- success; otherwise failed.
 */
int main(int argc, char *argv[])
{
	int fd, retvalue;
	char *filename;
	unsigned char databuf[1];
	
	if (argc != 3) {
		printf("Error Usage!\r\n");
		return -1;
	}

	filename = argv[1];

	/* open led driver */
	fd = open(filename, O_RDWR);
	if (fd < 0) {
		printf("file %s open failed!\r\n", argv[1]);
		return -1;
	}

	databuf[0] = atoi(argv[2]);	// 要执行的操作：open或close 

	// Write to /dev/led
	retvalue = write(fd, databuf, sizeof(databuf));
	if (retvalue < 0) {
		printf("LED Control Failed!\r\n");
		close(fd);
		return -1;
	}

	retvalue = close(fd); // close file
	if (retvalue < 0) {
		printf("file %s close failed!\r\n", argv[1]);
		return -1;
	}
	return 0;
}
