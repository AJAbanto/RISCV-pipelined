#!/bin/bash -f
# ****************************************************************************
# Vivado (TM) v2020.2 (64-bit)
#
# Filename    : simulate.sh
# Simulator   : Xilinx Vivado Simulator
# Description : Script for simulating the design by launching the simulator
#
# Generated by Vivado on Thu Aug 19 23:32:29 PST 2021
# SW Build 3064766 on Wed Nov 18 09:12:47 MST 2020
#
# Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
#
# usage: simulate.sh
#
# ****************************************************************************
set -Eeuo pipefail
# simulate design
echo "xsim tb_main_behav -key {Behavioral:sim_1:Functional:tb_main} -tclbatch tb_main.tcl -log simulate.log"
xsim tb_main_behav -key {Behavioral:sim_1:Functional:tb_main} -tclbatch tb_main.tcl -log simulate.log

