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

		When we lookup in the device tree file we found it included imx6ull.dti

		In imx6ull.dti, if we look up 2040000.iomuxc, we find this node. 

			tsc: tsc@02040000 {
				 compatible = "fsl,imx6ul-tsc";
				 reg = <0x02040000 0x4000>, <0x0219c000 0x4000>;
				 interrupts = <GIC_SPI 3 IRQ_TYPE_LEVEL_HIGH>,
								<GIC_SPI 101 IRQ_TYPE_LEVEL_HIGH>;
				 clocks = <&clks IMX6UL_CLK_IPG>,
						<&clks IMX6UL_CLK_ADC2>;
				 clock-names = "tsc", "adc";
				 status = "disabled";
			 };

		Now look up for tsc in imx6ull-alientek-emmc-luyaohan1001.dts

			We found the following node tsc corresponding to the tsc in imx6ull.dti:

				&tsc {
					pinctrl-names = "default";
					pinctrl-0 = <&pinctrl_tsc>;				/* <------ (!) We have conflicted the use of pinctrl_tsc subnode with  "gt9147:gt9147@14" declared by our own/
					xnur-gpio = <&gpio1 3 GPIO_ACTIVE_LOW>;
					measure-delay-time = <0xffff>;
					pre-charge-time = <0xfff>;
					status = "okay";
				};

			Thus we need to comment out this subnode.

	

		Now try again after boot in imx6ull console!

		/lib/modules/4.1.15 # insmod gt9147.ko 

			Expect: 

			input: gt9147 as /devices/platform/soc/2100000.aips-bus/21a4000.i2c/i2c-1/1-0014/input/input1

			$ cd /dev/input

			$ hexdump event1

		# Touch the screen now and we should see output when we touch the screen:


				0000000 2b62 0000 9656 000c 0003 0039 0000 0000
				random: nonblocking pool is initialized261 0000

				0000020 2b62 0000 9656 000c 0003 0036 012d 0000
				0000030 2b62 0000 9656 000c 0001 014a 0001 0000
				0000040 2b62 0000 9656 000c 0003 0000 0261 0000
				0000050 2b62 0000 9656 000c 0003 0001 012d 0000
				0000060 2b62 0000 9656 000c 0000 0000 0000 0000
				0000070 2b62 0000 89ba 000d 0003 0039 ffff ffff
				0000080 2b62 0000 89ba 000d 0001 014a 0000 0000
				0000090 2b62 0000 89ba 000d 0000 0000 0000 0000




		




