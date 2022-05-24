#!/bin/bash

#sudo apt-get install gcc-4.4 libusb-dev

#Please edit line 1 in the Makefile to :
#CC=gcc-4.4

#$ make : No issues. The binary 'keenectl' is being created.


#Please try : sudo modprobe -r usbhid


#I have no "device" / USB micro-transmitter, the reply from $ ./keenectl
#... is : No Device. ( Ubuntu 12.04 ).

clang-11 keenectl.c -o keenectl -lm -lusb -Wall
#gcc-8 -c keenectl.c -o keenectl -lm -lusb -Wall -I/usr/include/libusb-1.0 -L/usr/lib/x86_64-linux-gnu 
chmod +x keenectl
