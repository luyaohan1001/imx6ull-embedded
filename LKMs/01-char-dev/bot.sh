echo '---- ---- ---- ---- ---- ---- ---- ----'
echo 'bot executing: make clean...'
make clean
echo '-Done-'
echo '---- ---- ---- ---- ---- ---- ---- ----'
echo 'bot executing: make...'
make
echo '-Done-'
echo '---- ---- ---- ---- ---- ---- ---- ----'
echo 'bot compiling user program...'
arm-linux-gnueabihf-gcc chrdevbaseApp.c -o chrdevbaseApp
echo '-Done-'
echo '---- ---- ---- ---- ---- ---- ---- ----'
echo 'bot copying .ko files to the nfs rootfs...'
sudo cp chrdevbase.ko chrdevbaseApp /home/luyaohan1001/Projects/linux/nfs/rootfs/lib/modules/4.1.15/ -f
echo '-Done-'
echo '---- ---- ---- ---- ---- ---- ---- ----'

