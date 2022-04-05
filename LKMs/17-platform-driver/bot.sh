echo '---- ---- ---- ---- ---- ---- ---- ----'
echo 'bot executing: make clean...'
make clean
echo '- done -'
echo '---- ---- ---- ---- ---- ---- ---- ----'
echo 'bot executing: make'
make
echo '- done -'
echo '---- ---- ---- ---- ---- ---- ---- ----'
echo 'bot compiling user program...'
arm-linux-gnueabihf-gcc ledApp.c -o ledApp
echo '- done -'
echo '---- ---- ---- ---- ---- ---- ---- ----'
echo 'bot copying .ko files to the nfs rootfs'
sudo cp leddevice.ko leddriver.ko ledApp /home/luyaohan1001/Projects/linux/nfs/rootfs/lib/modules/4.1.15/ -f
echo '- done -'
echo '---- ---- ---- ---- ---- ---- ---- ----'

