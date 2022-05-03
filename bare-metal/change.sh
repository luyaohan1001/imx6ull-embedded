#!/bin/bash

items=`ls`

for item in $items; do 
  if [[ -d $item ]]; then
		cd $item 
		echo `pwd`
	
		if [[ -d ./src/bsp ]]; then
			cd ./src/bsp
			for b in `ls`; do
			if [[ $b == "adc" ]]; then
			  rm -rf ./adc
				ln -s /home/luyaohan1001/Projects/imx6ull-embedded/bare-metal/bsp/adc .
			elif [[ $b == "ap3216c" ]]; then
			  rm -rf ./ap3216c
				ln -s /home/luyaohan1001/Projects/imx6ull-embedded/bare-metal/bsp/ap3216c .
			elif [[ $b == "backlight" ]]; then
			  rm -rf ./backlight
				ln -s /home/luyaohan1001/Projects/imx6ull-embedded/bare-metal/bsp/backlight .
			elif [[ $b == "beep" ]]; then
			  rm -rf ./beep
				ln -s /home/luyaohan1001/Projects/imx6ull-embedded/bare-metal/bsp/beep .
			elif [[ $b == "bmp280" ]]; then
			  rm -rf ./bmp280
				ln -s /home/luyaohan1001/Projects/imx6ull-embedded/bare-metal/bsp/bmp280 .
			elif [[ $b == "clk" ]]; then
			  rm -rf ./clk
				ln -s /home/luyaohan1001/Projects/imx6ull-embedded/bare-metal/bsp/clk .
			elif [[ $b == "delay" ]]; then
			  rm -rf ./delay
				ln -s /home/luyaohan1001/Projects/imx6ull-embedded/bare-metal/bsp/delay .
			elif [[ $b == "epittimer" ]]; then
			  rm -rf ./epittimer
				ln -s /home/luyaohan1001/Projects/imx6ull-embedded/bare-metal/bsp/epittimer .
			elif [[ $b == "gpio" ]]; then
			  rm -rf ./gpio
				ln -s /home/luyaohan1001/Projects/imx6ull-embedded/bare-metal/bsp/gpio .
			elif [[ $b == "i2c" ]]; then
			  rm -rf ./i2c
				ln -s /home/luyaohan1001/Projects/imx6ull-embedded/bare-metal/bsp/i2c .
			elif [[ $b == "icm20608" ]]; then
			  rm -rf ./icm20608
				ln -s /home/luyaohan1001/Projects/imx6ull-embedded/bare-metal/bsp/icm20608 .
			elif [[ $b == "int" ]]; then
			  rm -rf ./int
				ln -s /home/luyaohan1001/Projects/imx6ull-embedded/bare-metal/bsp/int .
			elif [[ $b == "key" ]]; then
			  rm -rf ./key
				ln -s /home/luyaohan1001/Projects/imx6ull-embedded/bare-metal/bsp/key .
			elif [[ $b == "keyfilter" ]]; then
			  rm -rf ./keyfilter
				ln -s /home/luyaohan1001/Projects/imx6ull-embedded/bare-metal/bsp/keyfilter .
			elif [[ $b == "lcd" ]]; then
			  rm -rf ./lcd
				ln -s /home/luyaohan1001/Projects/imx6ull-embedded/bare-metal/bsp/lcd .
			elif [[ $b == "led" ]]; then
			  rm -rf ./led
				ln -s /home/luyaohan1001/Projects/imx6ull-embedded/bare-metal/bsp/led .
			elif [[ $b == "mpu9250" ]]; then
			  rm -rf ./mpu9250
				ln -s /home/luyaohan1001/Projects/imx6ull-embedded/bare-metal/bsp/mpu9250 .
			elif [[ $b == "nxp-migrated" ]]; then
			  rm -rf ./nxp-migrated
				ln -s /home/luyaohan1001/Projects/imx6ull-embedded/bare-metal/bsp/nxp-migrated .
			elif [[ $b == "rtc" ]]; then
			  rm -rf ./rtc
				ln -s /home/luyaohan1001/Projects/imx6ull-embedded/bare-metal/bsp/rtc .
			elif [[ $b == "spi" ]]; then
			  rm -rf ./spi
				ln -s /home/luyaohan1001/Projects/imx6ull-embedded/bare-metal/bsp/spi .
			elif [[ $b == "touchscreen" ]]; then
			  rm -rf ./touchscreen
				ln -s /home/luyaohan1001/Projects/imx6ull-embedded/bare-metal/bsp/touchscreen .
			elif [[ $b == "uart" ]]; then
			  rm -rf ./uart
				ln -s /home/luyaohan1001/Projects/imx6ull-embedded/bare-metal/bsp/uart .
			elif [[ $b == "exit" ]]; then
			  rm -rf ./exit
				ln -s /home/luyaohan1001/Projects/imx6ull-embedded/bare-metal/bsp/exit .
			fi
			done
			cd ../../
		fi

		cd ..
		echo `pwd`
	fi

done
