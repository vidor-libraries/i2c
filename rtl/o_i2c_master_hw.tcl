# Copyright 2018 ARDUINO SA (http://www.arduino.cc/)
# This file is part of Vidor IP.
# Copyright (c) 2018
# Authors: Dario Pennisi
#
# This software is released under:
# The GNU General Public License, which covers the main part of
# Vidor IP
# The terms of this license can be found at:
# https://www.gnu.org/licenses/gpl-3.0.en.html
#
# You can be released from the requirements of the above licenses by purchasing
# a commercial license. Buying such a license is mandatory if you want to modify or
# otherwise use the software for commercial activities involving the Arduino
# software without disclosing the source code of your own applications. To purchase
# a commercial license, send an email to license@arduino.cc.

#
# o_i2c_master "I2C Master" v1.0
#  2018.03.29.11:04:13
#
#

#
# request TCL package from ACDS 16.1
#
package require -exact qsys 16.1


#
# module o_i2c_master
#
set_module_property DESCRIPTION ""
set_module_property NAME o_i2c_master
set_module_property VERSION 1.0
set_module_property INTERNAL false
set_module_property OPAQUE_ADDRESS_MAP true
set_module_property GROUP ipTronix
set_module_property AUTHOR ""
set_module_property DISPLAY_NAME "I2C Master"
set_module_property INSTANTIATE_IN_SYSTEM_MODULE true
set_module_property EDITABLE true
set_module_property REPORT_TO_TALKBACK false
set_module_property ALLOW_GREYBOX_GENERATION false
set_module_property REPORT_HIERARCHY false


#
# file sets
#
add_fileset quartus_synth QUARTUS_SYNTH "" "Quartus Synthesis"
set_fileset_property quartus_synth TOP_LEVEL o_i2c_master
set_fileset_property quartus_synth ENABLE_RELATIVE_INCLUDE_PATHS false
set_fileset_property quartus_synth ENABLE_FILE_OVERWRITE_MODE false
add_fileset_file o_i2c_master.v VERILOG PATH o_i2c_master.v
add_fileset_file i2c_master_bit_ctrl.v VERILOG PATH i2c_master_bit_ctrl.v
add_fileset_file i2c_master_byte_ctrl.v VERILOG PATH i2c_master_byte_ctrl.v
add_fileset_file i2c_master_defines.v VERILOG PATH i2c_master_defines.v
add_fileset_file i2c_master_top.v VERILOG PATH i2c_master_top.v
add_fileset_file timescale.v VERILOG PATH timescale.v

add_fileset sim_verilog SIM_VERILOG "" "Verilog Simulation"
set_fileset_property sim_verilog TOP_LEVEL o_i2c_master
set_fileset_property sim_verilog ENABLE_RELATIVE_INCLUDE_PATHS false
set_fileset_property sim_verilog ENABLE_FILE_OVERWRITE_MODE false
add_fileset_file o_i2c_master.v VERILOG PATH o_i2c_master.v
add_fileset_file i2c_master_bit_ctrl.v VERILOG PATH i2c_master_bit_ctrl.v
add_fileset_file i2c_master_byte_ctrl.v VERILOG PATH i2c_master_byte_ctrl.v
add_fileset_file i2c_master_defines.v VERILOG PATH i2c_master_defines.v
add_fileset_file i2c_master_top.v VERILOG PATH i2c_master_top.v
add_fileset_file timescale.v VERILOG PATH timescale.v


#
# parameters
#


#
# display items
#


#
# connection point clk
#
add_interface clk clock end
set_interface_property clk clockRate 0
set_interface_property clk ENABLED true
set_interface_property clk EXPORT_OF ""
set_interface_property clk PORT_NAME_MAP ""
set_interface_property clk CMSIS_SVD_VARIABLES ""
set_interface_property clk SVD_ADDRESS_GROUP ""

add_interface_port clk wb_clk_i clk Input 1


#
# connection point reset
#
add_interface reset reset end
set_interface_property reset associatedClock clk
set_interface_property reset synchronousEdges DEASSERT
set_interface_property reset ENABLED true
set_interface_property reset EXPORT_OF ""
set_interface_property reset PORT_NAME_MAP ""
set_interface_property reset CMSIS_SVD_VARIABLES ""
set_interface_property reset SVD_ADDRESS_GROUP ""

add_interface_port reset wb_rst_i reset Input 1


#
# connection point avalon_slave
#
add_interface avalon_slave avalon end
set_interface_property avalon_slave addressUnits WORDS
set_interface_property avalon_slave associatedClock clk
set_interface_property avalon_slave associatedReset reset
set_interface_property avalon_slave bitsPerSymbol 8
set_interface_property avalon_slave burstOnBurstBoundariesOnly false
set_interface_property avalon_slave burstcountUnits WORDS
set_interface_property avalon_slave explicitAddressSpan 0
set_interface_property avalon_slave holdTime 0
set_interface_property avalon_slave linewrapBursts false
set_interface_property avalon_slave maximumPendingReadTransactions 0
set_interface_property avalon_slave maximumPendingWriteTransactions 0
set_interface_property avalon_slave readLatency 1
set_interface_property avalon_slave readWaitTime 0
set_interface_property avalon_slave setupTime 0
set_interface_property avalon_slave timingUnits Cycles
set_interface_property avalon_slave writeWaitTime 0
set_interface_property avalon_slave ENABLED true
set_interface_property avalon_slave EXPORT_OF ""
set_interface_property avalon_slave PORT_NAME_MAP ""
set_interface_property avalon_slave CMSIS_SVD_VARIABLES ""
set_interface_property avalon_slave SVD_ADDRESS_GROUP ""

add_interface_port avalon_slave wb_ack_o waitrequest_n Output 1
add_interface_port avalon_slave wb_adr_i address Input 3
add_interface_port avalon_slave wb_dat_i writedata Input 32
add_interface_port avalon_slave wb_stb_i chipselect Input 1
add_interface_port avalon_slave wb_we_i write Input 1
add_interface_port avalon_slave wb_dat_o readdata Output 32
set_interface_assignment avalon_slave embeddedsw.configuration.isFlash 0
set_interface_assignment avalon_slave embeddedsw.configuration.isMemoryDevice 0
set_interface_assignment avalon_slave embeddedsw.configuration.isNonVolatileStorage 0
set_interface_assignment avalon_slave embeddedsw.configuration.isPrintableDevice 0


#
# connection point i2c
#
add_interface i2c conduit end
set_interface_property i2c associatedClock ""
set_interface_property i2c associatedReset ""
set_interface_property i2c ENABLED true
set_interface_property i2c EXPORT_OF ""
set_interface_property i2c PORT_NAME_MAP ""
set_interface_property i2c CMSIS_SVD_VARIABLES ""
set_interface_property i2c SVD_ADDRESS_GROUP ""

add_interface_port i2c scl_pad_i scl_i Input  1
add_interface_port i2c scl_pad_o scl_o Output 1
add_interface_port i2c scl_padoen_o scl_en Output 1

add_interface_port i2c sda_pad_i sda_i Input 1
add_interface_port i2c sda_pad_o sda_o Output 1
add_interface_port i2c sda_padoen_o sda_en Output 1


#
# connection point interrupt_sender
#
add_interface interrupt_sender interrupt end
set_interface_property interrupt_sender associatedAddressablePoint ""
set_interface_property interrupt_sender associatedClock clk
set_interface_property interrupt_sender bridgedReceiverOffset ""
set_interface_property interrupt_sender bridgesToReceiver ""
set_interface_property interrupt_sender ENABLED true
set_interface_property interrupt_sender EXPORT_OF ""
set_interface_property interrupt_sender PORT_NAME_MAP ""
set_interface_property interrupt_sender CMSIS_SVD_VARIABLES ""
set_interface_property interrupt_sender SVD_ADDRESS_GROUP ""

add_interface_port interrupt_sender wb_inta_o irq Output 1

