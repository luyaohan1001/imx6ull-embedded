# Assembly code for turnning on LED on IMX6ULL Processor.
	- To compile

	$ make

	- Prepare an SD card and connect to computer through SD-USB adapter.

	$ ./imxdownload led.bin /dev/sd<x> # depending on the device plugged.

	> Expect the LED to turn on after hard reset.

# Register Table
	| Register Mnemonics                     |  Register Definition                     | Page Reference
	----------------------------------------------------------------------------------------------------------------
	| CCM_CCGR0                              | CCM Clock Gating Register 0.             | Section 18.6.23. Page 698.
	| CCM_CCGR1                              | CCM Clock Gating Register 1.             | Section 18.6.24. Page 700.
	| CCM_CCGR2                              | CCM Clock Gating Register 2.             | Section 18.6.25. Page 702.
	| CCM_CCGR3                              | CCM Clock Gating Register 3.             | Section 18.6.26. Page 703.
	| CCM_CCGR4                              | CCM Clock Gating Register 4.             | Section 18.6.27. Page 704.
	| CCM_CCGR5                              | CCM Clock Gating Register 5.             | Section 18.6.28. Page 706.
	| CCM_CCGR6                              | CCM Clock Gating Register 6.             | Section 18.6.29. Page 707.
	| GPIO1_DR                               | GPIO Data Register                       | Section 28.5.1. Page1358.
	| GPIO1_GDIR                             | GPIO direction register                  | Section 28.5.2. Page 1359.
	| IOMUXC_SW_MUX_CTL_PAD_GPIO1_IO03       | SW_MUX_CTL_PAD_GPIO1_IO03 SW MUX Control | Section 32.6.10. Page 1571.
	| IOMUXC_SW_PAD_CTL_PAD_GPIO1_IO03       | SW_PAD_CTL_PAD_GPIO1_IO03 SW PAD Control | Section 32.6.156. Page 1793.
 

