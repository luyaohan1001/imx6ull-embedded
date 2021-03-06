Overview
========
The PXP LCDIF hand shake project shows how to enable the hand shake between
PXP and LCDIF. If this example runs correctly, you will see two rectangles moving in the
screen. One rectangle is process surface output, and the other is alpha surface
output, the overlay region color is OR'ed value of process surface and alpha surface.

NOTE:
This example must run continously to get the right result, breaking during debug
will results to handshake fail. Because the PXP must be started before every LCD
frame, if system is halt, the PXP does not start correctly.

Toolchain supported
===================
- IAR embedded Workbench 7.80.4
- GCC ARM Embedded 2016-5.4-q3

Hardware requirements
=====================
- Micro USB cable
- MCIMX6ULL-EVK  board
- JLink Plus
- 5V power supply
- Personal Computer
- LCD8000-43T LCD board

Board settings
==============
1. Connect the LCD8000-43T board to J901.

Prepare the Demo
================
1.  Connect 5V power supply and JLink Plus to the board, switch SW2001 to power on the board.
2.  Connect a USB cable between the host PC and the J1901 USB port on the target board.
3.  Open a serial terminal with the following settings:
    - 115200 baud rate
    - 8 data bits
    - No parity
    - One stop bit
    - No flow control
4.  Download the program to the target board.
5.  Launch the debugger in your IDE to begin running the demo.

Running the demo
================
Customization options
=====================

