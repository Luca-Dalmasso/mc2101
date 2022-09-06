#!/bin/bash

#script for programming fpga using Quartus II programmer
PROGRAMMER=$(whereis quartus_pgm)
PROGRAMMER=$(echo $PROGRAMMER | cut -d' ' -f2)

DEVICE=$(jtagconfig | grep DE-SoC | cut -d' ' -f3)
DEVICE="DE-SoC $DEVICE"
echo $DEVICE

#quartus_pgm needs to be run as super user otherwise is not able to see the usb blaster
#cdf file (Chain Description File) if not present can be generated by quartus programmer gui
sudo $PROGRAMMER --cable=$DEVICE output_files/mc2101.cdf
