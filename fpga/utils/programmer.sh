#!/bin/bash

#script for programming fpga using Quartus II programmer
PROGRAMMER=$(which quartus_pgm)

JTAG_CFG=$(which jtagconfig)

DEVICE=$(sudo $(JTAG_CFG) | grep DE-SoC | cut -d' ' -f3)

if [ -z "$DEVICE" ]
then
    exit 1
fi

DEVICE="DE-SoC$DEVICE"

#quartus_pgm needs to be run as super user otherwise is not able to see the usb blaster
#cdf file (Chain Description File) if not present can be generated by quartus programmer gui
sudo $PROGRAMMER --cable=$DEVICE output_files/mc2101.cdf