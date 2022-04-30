OS: Ubuntu 16.04

# To install the gcc-arm-linux-gnuarabi cross-compiler

	1. Download gcc-linaro-4.9.4-2017.01-x86_64_arm-linux-gnueabihf.tar.xz from:

	https://releases.linaro.org/components/toolchain/binaries/4.9-2017.01/arm-linux-gnueabihf/

	2. In ubuntu 16.04 (development machine)

		$ sudo mkdir /usr/local/arm

		$ sudo tar xf gcc-linaro-4.9.4-2017.01-x86_64_arm-linux-gnueabihf.tar.xz -C /usr/local/arm/

	3. Add the tool to environment path.

		$ sudo vim /etc/profile

		add the following:

		export PATH=$PATH:/usr/local/arm/gcc-linaro-4.9.4-2017.01-x86_64_arm-linux-gnueabihf/bin

	4. Install some dependencies

		$ sudo apt-get install lsb-core lib32stdc++6

	5. Check if the installation is successful:

		$ arm-linux-gnueabihf-gcc -v

		Expect:

		......
		gcc version 4.9.4 (Linaro GCC 4.9-2017.01)

