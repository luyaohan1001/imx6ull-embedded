# Assembly code for turnning on LED on IMX6ULL Processor.
	- To compile

	$ make

	- Prepare an SD card and connect to computer through SD-USB adapter.

	$ ./imxdownload led.bin /dev/sd<x> # depending on the device plugged.

	> Expect the LED to turn on after hard reset.

# Register Table
	| Register Mnemonics                     |  Register Definition | Page Reference
	-------------------------------------------------------------------------------
	| CCM_CCGR0                              |
	| CCM_CCGR1                              |
	| CCM_CCGR2                              |
	| CCM_CCGR3                              |
	| CCM_CCGR4                              |
	| CCM_CCGR5                              |
	| CCM_CCGR6                              |
	|  
	| GPIO1_DR                               |
	| GPIO1_GDIR                             |
	| 
	| IOMUXC_SW_MUX_CTL_PAD_GPIO1_IO03       |
	| IOMUXC_SW_PAD_CTL_PAD_GPIO1_IO03       |

