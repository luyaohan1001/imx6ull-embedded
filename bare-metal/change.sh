#!/bin/bash

items=`ls`

for item in $items; do 
  if [[ -d $item ]]; then
		cd $item 
		echo `pwd`
	
		if [[ -d ./src/bsp ]]; then
			cd ./src/bsp
			for b in `ls`; do
			if [[ $b == "exit" ]]; then
			  rm ./exit
				ln -s /home/luyaohan1001/Projects/imx6ull-embedded/bare-metal/bsp/exti .
			fi

			if [[ $b == "int" ]]; then
			  rm ./int
				ln -s /home/luyaohan1001/Projects/imx6ull-embedded/bare-metal/bsp/interrupt .
			fi
			done
			cd ../../
		fi

		cd ..
		echo `pwd`
	fi

done
