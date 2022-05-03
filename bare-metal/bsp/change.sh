#!/bin/bash

items=`ls`

# Our folder
for item in $items; do 
  if [[ -d $item ]]; then
		cd $item 
		echo `pwd`
		# Inner folder.
		for file in `ls`; do
			if [[ -f $file ]]; then
			 sed -i 's/@return/@retval/g' $file
			fi
		done;

		cd ..
		echo `pwd`
	fi

done
