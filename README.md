
# glibc-mPvD
Modified GNU c library for multiple Provisioning Domains support.

The modification done on the library affect only the dns resolution portion. This part of the code is contained in the resolv folder of glibc, and is used to build the [libresolv.so](https://www.freebsd.org/cgi/man.cgi?query=libresolv&apropos=0&sektion=0&manpath=SunOS+5.7&format=html) shared object.

# Installation of the 'PvD-aware'  glibc (2.27)
* The script glibc.sh will create a glibc folder and download the source from the official repository. Once it is done, the patch (patch/glibc.patch) will be applied on the source files. Finally, glibc will be configured and compiled in a build folder at the root of the archive. The files from the libpvd folder will be copied in some folders of /usr to enable the compilation of glibc with the PvD feature enabled.
  * ./glibc.sh

# Testing the 'PvD-aware' glibc
* Go to the test folder:
  * cd tests

* Before executing any tests, ensure [pvdd ](https://github.com/IPv6-mPvD/pvdd/) is running:
  * pvdd -v 

* Compile the tests codes:
  * make

*  The performance tests cannot be used without modifying the glibc library
	* A timer must be set in glibc to build files like the one available in the test folder ([perf_PvD.txt](https://github.com/MiDiBa/glibc-mPvD/blob/master/tests/perf_PvD.txt "perf_PvD.txt") and [perf_noPvD.txt](https://github.com/MiDiBa/glibc-mPvD/blob/master/tests/perf_noPvD.txt "perf_noPvD.txt")).
	* Once the files are created, performance graphs can be output using the python script [performances_plot.py](https://github.com/MiDiBa/glibc-mPvD/blob/master/tests/performances_plot.py "performances_plot.py").

* [dns_resolv.c](https://github.com/MiDiBa/glibc-mPvD/blob/master/tests/dns_resolv.c "dns_resolv.c") can be used to make DNS queries using the new glibc code:
  * sudo ./run_tests.sh dns_resolv \<nopvd\> \<pvd\> \<name\>
    * nopvd: Flag stating if a DNS resolution must be done without binding the process to a PvD
    * pvd: Flag stating if a DNS resolution must be done by binding the process to a PvD
    * name: The name that should be resolved
  * The PvD to which the process will be bound is handcrafted and contains the following values:
	  * RDNSS: 8.8.8.8
	  * DNSSL: ulg.ac.be

NB: using ./build/testrun.sh (through run_tests.sh) is simply an automated way to link newly compiled libraries to the tests programs. Thus, the installed version of glibc on the host is bypassed. More information about this script can be retrieved on [sourceware](https://sourceware.org/glibc/wiki/Testing/Builds). 

# 'PvD-aware' applications
A TCP and a UDP small IPv6 client/server 'PvD-aware' applications have been developed. The source code of these applications is available in the folder [pvd-aware-app](https://github.com/MiDiBa/glibc-mPvD/tree/master/pvd-aware-app "pvd-aware-app"). 

* First, compile the code of the applications:
	* make

* Launch a one of the server:
	* ./XXX_server
		* XXX must be replaced by UDP or TCP
* Launch the corresponding client:
	* ./XXX_client \<serv_address \> [pvd]
		* XXX must be replaced by UDP or TCP, according to the server launched
		* serv_address: address on which the server is hosted (if in the same machine, use the loopback address 0::)
		* pvd: optional argument specifying the name of the pvd to which the client application must be bound

