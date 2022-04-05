echo '---- ---- ---- ---- ---- ---- ---- ----'
echo 'bot executing: make clean...'
make clean
echo '- done - '
echo '---- ---- ---- ---- ---- ---- ---- ----'
echo 'bot executing: make'
make
echo '- done - '
echo '---- ---- ---- ---- ---- ---- ---- ----'
echo 'bot copying .ko files to the nfs rootfs'
sudo cp gt9147.ko /home/luyaohan1001/Projects/imx6ull-linux-migration/nfs/rootfs/lib/modules/4.1.15 -f
echo '- done - '
echo '---- ---- ---- ---- ---- ---- ---- ----'

