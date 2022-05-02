#!/bin/bash

items=`ls`

for item in $items; do 
  if [[ -d $item ]]; then
		cd $item 
		echo `pwd`
    # if [[ -f imx6ul.lds ]]; then
    sed -i 's/\t/  /g' imx6ul.lds
    # fi
		mv bsp libs
		cd ..
		echo `pwd`
	fi

done
