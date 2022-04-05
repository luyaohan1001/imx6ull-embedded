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

		Add the following as subnode to I2C2

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

		....... (Other subnodes)
	
		$ cd /home/luyaohan1001/Projects/imx6ull-linux-migration/kernel-migration/migrated/linux-imx-rel_imx_4.1.15_2.1.0_ga_alientek/

		$ make dtbs

