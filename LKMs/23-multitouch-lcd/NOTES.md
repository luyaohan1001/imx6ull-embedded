# Note that if no device tree is changed and we insmod gt9147.ko we cannot access the touch screen.

		/lib/modules/4.1.15 # insmod gt9147.ko 	-> no sign of any access to display
		/lib/modules/4.1.15 # ls


# To change the device tree.

		$ vim /home/luyaohan1001/Projects/imx6ull-linux-migration/kernel-migration/migrated/linux-imx-rel_imx_4.1.15_2.1.0_ga_alientek/arch/arm/boot/dts/imx6ull-alientek-emmc-luyaohan1001.dts


		Under node named "&iomuxc", there's by default a node called : "pinctrl_tsc: tscgrp". Change its setting to following:

		pinctrl_tsc: tscgrp {
			fsl,pins = <
			MX6UL_PAD_SNVS_TAMPER9__GPIO5_IO09 0x10B0 /* TSC_RST */
			MX6UL_PAD_GPIO1_IO09__GPIO1_IO09 0x10B0 /* TSC_INT */
		>;

		The following node describes the multiplxed I2C2, which already exist, just FYI

		pinctrl_i2c2: i2c2grp {
			fsl,pins = <
				MX6UL_PAD_UART5_TX_DATA__I2C2_SCL 0x4001b8b0
				MX6UL_PAD_UART5_RX_DATA__I2C2_SDA 0x4001b8b0
		>;

		Add the node and configuration for gt9147 : gt9147@14 as subnode to I2C2

			&i2c2 {

				clock_frequency = <100000>;

				pinctrl-names = "default";

				pinctrl-0 = <&pinctrl_i2c2>;

				status = "okay";

				gt9147:gt9147@14 {
					compatible = "goodix,gt9147", "goodix,gt9xx";
					reg = <0x14>;	/* gt9147 I2C device address is 0x14 */
					pinctrl-names = "default";
					pinctrl-0 = <&pinctrl_tsc>;
					interrupt-parent = <&gpio1>;
					interrupts = <9 0>;
					reset-gpios = <&gpio5 9 GPIO_ACTIVE_LOW>;
					interrupt-gpios = <&gpio1 9 GPIO_ACTIVE_LOW>;
					status = "okay";
				};

				&codec: wm8960@1a {
					compatible = "wlf,wm8960";
					reg = <0x1a>;
					clocks = <&clks IMX6UL_CLK_SAI2>;
					clock-names = "mclk";
					wlf,shared-lrclk;
				};

				....... (Other subnodes)
		};
		
		$ cd /home/luyaohan1001/Projects/imx6ull-linux-migration/kernel-migration/migrated/linux-imx-rel_imx_4.1.15_2.1.0_ga_alientek/

		$ make dtbs

		Encountered following error even added the above:
			/lib/modules/4.1.15 # insmod gt9147.ko 
			imx6ul-pinctrl 20e0000.iomuxc: pin MX6UL_PAD_GPIO1_IO01 already requested by 2040000.tsc; cannot claim for 1-0014
			imx6ul-pinctrl 20e0000.iomuxc: pin-24 (1-0014) status -22
			imx6ul-pinctrl 20e0000.iomuxc: could not request pin 24 (MX6UL_PAD_GPIO1_IO01) from group tscgrp  on device 20e0000.iomuxc
			gt9147 1-0014: Error applying setting, reverse things back
			input: gt9147 as /devices/platform/soc/2100000.aips-bus/21a4000.i2c/i2c-1/1-0014/input/input2

# Setup environment variable for running tslib and qt application on imx6ull linux.

		# test tslib, in imx6ull linux console

		$ vi /etc/profile

		Add the following: 
			export TSLIB_ROOT=/usr/lib/arm-tslib
			export TSLIB_CONSOLEDEVICE=none
			export TSLIB_FBDEVICE=/dev/fb0
			export TSLIB_TSDEVICE=/dev/input/event1
			export TSLIB_CONFFILE=$TSLIB_ROOT/etc/ts.conf
			export TSLIB_PLUGINDIR=$TSLIB_ROOT/lib/ts
			export TSLIB_CALIBFILE=/etc/pointercal
			export LD_PRELOAD=$TSLIB_ROOT/lib/libts.so

		$ source /etc/profile

		$ /usr/lib/arm-tslib/bin/ts_test

		If you click on drag / draw / quit and it work then tslib is working!

		# test qt

		Add the following: 
			export QT_ROOT=/usr/lib/arm-qt
			export QT_QPA_GENERIC_PLUGINS=tslib:/dev/input/event1 
			export QT_QPA_FONTDIR=/usr/share/fonts
			export QT_QPA_PLATFORM_PLUGIN_PATH=$QT_ROOT/plugins
			export QT_QPA_PLATFORM=linuxfb:tty=/dev/fb0
			export QT_PLUGIN_PATH=$QT_ROOT/plugins
			export LD_LIBRARY_PATH=$QT_ROOT/lib:$QT_ROOT/plugins/platforms
			export QML2_IMPORT_PATH=$QT_ROOT/qml
			export QT_QPA_FB_TSLIB=1

		$ source /etc/profile
