#!/bin/sh

# 
# Vivado(TM)
# runme.sh: a Vivado-generated Runs Script for UNIX
# Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
# 

if [ -z "$PATH" ]; then
  PATH=/home/tibo36/Xilinx-Vivavdo/SDK/2018.2/bin:/home/tibo36/Xilinx-Vivavdo/Vivado/2018.2/ids_lite/ISE/bin/lin64:/home/tibo36/Xilinx-Vivavdo/Vivado/2018.2/bin
else
  PATH=/home/tibo36/Xilinx-Vivavdo/SDK/2018.2/bin:/home/tibo36/Xilinx-Vivavdo/Vivado/2018.2/ids_lite/ISE/bin/lin64:/home/tibo36/Xilinx-Vivavdo/Vivado/2018.2/bin:$PATH
fi
export PATH

if [ -z "$LD_LIBRARY_PATH" ]; then
  LD_LIBRARY_PATH=/home/tibo36/Xilinx-Vivavdo/Vivado/2018.2/ids_lite/ISE/lib/lin64
else
  LD_LIBRARY_PATH=/home/tibo36/Xilinx-Vivavdo/Vivado/2018.2/ids_lite/ISE/lib/lin64:$LD_LIBRARY_PATH
fi
export LD_LIBRARY_PATH

HD_PWD='/home/tibo36/Documents/Info-SI/Master/M1S1/AEO/TP_2/TP_2.runs/synth_2'
cd "$HD_PWD"

HD_LOG=runme.log
/bin/touch $HD_LOG

ISEStep="./ISEWrap.sh"
EAStep()
{
     $ISEStep $HD_LOG "$@" >> $HD_LOG 2>&1
     if [ $? -ne 0 ]
     then
         exit
     fi
}

EAStep vivado -log calc.vds -m64 -product Vivado -mode batch -messageDb vivado.pb -notrace -source calc.tcl
