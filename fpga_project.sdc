//Copyright (C)2014-2025 GOWIN Semiconductor Corporation.
//All rights reserved.
//File Title: Timing Constraints file
//Tool Version: V1.9.11.02 (64-bit) 
//Created Time: 2025-07-04 20:54:04
create_clock -name clk -period 250 -waveform {0 18.518} [get_ports {sys_clk}]
