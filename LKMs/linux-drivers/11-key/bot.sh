#!/bin/bash

# Rename user test program from xxxApp.c to usr-test-xxx.c
if [[ `ls *App.c` ]]; then
	old_app_level_program=`ls *App.c`
	echo old_app_level_program : $old_app_level_program
	new_app_level_program=`echo $old_app_level_program | sed 's/App//'`
	new_app_level_program="usr-test-$new_app_level_program"

	echo do you want to rename user-level test program \'$old_app_level_program\' to \'$new_app_level_program\'? [y/N]
	read yesno
	if [[ yesno=='y' ]]; then
		echo renaming to $new_app_level_program	
		mv $old_app_level_program $new_app_level_program
		echo - done -
	fi
fi



echo '---- ---- ---- ---- ---- ---- ---- ----'
echo 'bot executing: make clean...'
make clean
echo '- done - '
echo '---- ---- ---- ---- ---- ---- ---- ----'
echo 'bot executing: make'
make
echo '- done - '
echo '---- ---- ---- ---- ---- ---- ---- ----'
echo 'bot compiling user program...'
arm-linux-gnueabihf-gcc usr-test-key.c -o usr-test-key
echo '- done - '
echo '---- ---- ---- ---- ---- ---- ---- ----'
echo 'bot copying .ko files to the nfs rootfs'
sudo cp key.ko usr-test-key /home/luyaohan1001/Projects/linux/nfs/rootfs/lib/modules/4.1.15/ -f
echo '- done - '
echo '---- ---- ---- ---- ---- ---- ---- ----'

