# Change the device tree file (imx6ull-alientek-emmc-luyaohan1001.dts) to add the key node. 
	1. Add pinctrl node.

	The key on I.MX6U-ALPHA development board used the pin named 'UART1_CTS_B' 
	Open imx6ull-alientek-emmec-luyaohan1001.dts, find iomuxc node.

	Create a sub-node named pinctrl_key:

	pinctrl_key: keygrp {
		fsl,pins = <
				MX6UL_PAD_UART1_CTS_B__GPIO1_IO18 0xF080 /* KEY0 */
		>;
	};

	2. Create device node named 'key' under the root node.

		key {
			#address-cells = <1>;
			#size-cells = <1>;
			compatible = "atkalpha-key";
			pinctrl-names = "default";
			pinctrl-0 = <&pinctrl_key>; 	/* The pin the key uses is named 'pinctrl_key' */
			key-gpio = <&gpio1 18 GPIO_ACTIVE_LOW>; /* gpio the key uses is gpio1 - 18 */
			status = "okay";
	 	};
	3. In the linux kernel source root directort, compile the new device tree file.

		$ make dtbs
