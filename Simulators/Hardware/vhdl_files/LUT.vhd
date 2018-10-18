-- megafunction wizard: %ROM: 2-PORT%
-- GENERATION: STANDARD
-- VERSION: WM1.0
-- MODULE: altsyncram 

-- ============================================================
-- File Name: LUT.vhd
-- Megafunction Name(s):
-- 			altsyncram
--
-- Simulation Library Files(s):
-- 			altera_mf
-- ============================================================
-- ************************************************************
-- THIS IS A WIZARD-GENERATED FILE. DO NOT EDIT THIS FILE!
--
-- 13.1.3 Build 178 02/12/2014 SJ Full Version
-- ************************************************************


--Copyright (C) 1991-2014 Altera Corporation
--Your use of Altera Corporation's design tools, logic functions 
--and other software and tools, and its AMPP partner logic 
--functions, and any output files from any of the foregoing 
--(including device programming or simulation files), and any 
--associated documentation or information are expressly subject 
--to the terms and conditions of the Altera Program License 
--Subscription Agreement, Altera MegaCore Function License 
--Agreement, or other applicable license agreement, including, 
--without limitation, that your use is for the sole purpose of 
--programming logic devices manufactured by Altera and sold by 
--Altera or its authorized distributors.  Please refer to the 
--applicable agreement for further details.


LIBRARY ieee;
USE ieee.std_logic_1164.all;

LIBRARY altera_mf;
USE altera_mf.altera_mf_components.all;

use work.parameters.all;

ENTITY LUT IS
	PORT
	(
		aclr		: IN STD_LOGIC  := '0';
		address_a		: IN STD_LOGIC_VECTOR (LUT_SIZE-1 DOWNTO 0);
		address_b		: IN STD_LOGIC_VECTOR (LUT_SIZE-1 DOWNTO 0);
		clock		: IN STD_LOGIC  := '1';
		q_a		: OUT STD_LOGIC_VECTOR (LUT_WIDTH-1 DOWNTO 0);
		q_b		: OUT STD_LOGIC_VECTOR (LUT_WIDTH-1 DOWNTO 0)
	);
END LUT;


ARCHITECTURE SYN OF lut IS

	SIGNAL sub_wire0	: STD_LOGIC_VECTOR (LUT_WIDTH-1 DOWNTO 0);
	SIGNAL sub_wire1	: STD_LOGIC_VECTOR (LUT_WIDTH-1 DOWNTO 0);
	SIGNAL sub_wire2	: STD_LOGIC ;
	SIGNAL sub_wire3_bv	: BIT_VECTOR (LUT_WIDTH-1 DOWNTO 0);
	SIGNAL sub_wire3	: STD_LOGIC_VECTOR (LUT_WIDTH-1 DOWNTO 0);

BEGIN
	sub_wire2    <= '0';
	sub_wire3_bv(LUT_WIDTH-1 DOWNTO 0) <= (others => '0');
	sub_wire3    <= To_stdlogicvector(sub_wire3_bv);
	q_b    <= sub_wire0(LUT_WIDTH-1 DOWNTO 0);
	q_a    <= sub_wire1(LUT_WIDTH-1 DOWNTO 0);

	altsyncram_component : altsyncram
	GENERIC MAP (
		address_reg_b => "CLOCK0",
		clock_enable_input_a => "BYPASS",
		clock_enable_input_b => "BYPASS",
		clock_enable_output_a => "BYPASS",
		clock_enable_output_b => "BYPASS",
		indata_reg_b => "CLOCK0",
		init_file => "comp_time.mif",
		intended_device_family => "Stratix IV",
		lpm_type => "altsyncram",
		numwords_a => 2**LUT_SIZE,
		numwords_b => 2**LUT_SIZE,
		operation_mode => "BIDIR_DUAL_PORT",
		outdata_aclr_a => "CLEAR0",
		outdata_aclr_b => "CLEAR0",
		outdata_reg_a => "UNREGISTERED",
		outdata_reg_b => "UNREGISTERED",
		power_up_uninitialized => "FALSE",
		ram_block_type => "M9K",
		widthad_a => LUT_SIZE,
		widthad_b => LUT_SIZE,
		width_a => LUT_WIDTH,
		width_b => LUT_WIDTH,
		width_byteena_a => 1,
		width_byteena_b => 1,
		wrcontrol_wraddress_reg_b => "CLOCK0"
	)
	PORT MAP (
		clock0 => clock,
		wren_a => sub_wire2,
		address_b => address_b,
		data_b => sub_wire3,
		wren_b => sub_wire2,
		aclr0 => aclr,
		address_a => address_a,
		data_a => sub_wire3,
		q_b => sub_wire0,
		q_a => sub_wire1
	);



END SYN;

-- ============================================================
-- CNX file retrieval info
-- ============================================================
-- Retrieval info: PRIVATE: ADDRESSSTALL_A NUMERIC "0"
-- Retrieval info: PRIVATE: ADDRESSSTALL_B NUMERIC "0"
-- Retrieval info: PRIVATE: BYTEENA_ACLR_A NUMERIC "0"
-- Retrieval info: PRIVATE: BYTEENA_ACLR_B NUMERIC "0"
-- Retrieval info: PRIVATE: BYTE_ENABLE_A NUMERIC "0"
-- Retrieval info: PRIVATE: BYTE_ENABLE_B NUMERIC "0"
-- Retrieval info: PRIVATE: BYTE_SIZE NUMERIC "1"
-- Retrieval info: PRIVATE: BlankMemory NUMERIC "0"
-- Retrieval info: PRIVATE: CLOCK_ENABLE_INPUT_A NUMERIC "0"
-- Retrieval info: PRIVATE: CLOCK_ENABLE_INPUT_B NUMERIC "0"
-- Retrieval info: PRIVATE: CLOCK_ENABLE_OUTPUT_A NUMERIC "0"
-- Retrieval info: PRIVATE: CLOCK_ENABLE_OUTPUT_B NUMERIC "0"
-- Retrieval info: PRIVATE: CLRdata NUMERIC "0"
-- Retrieval info: PRIVATE: CLRq NUMERIC "1"
-- Retrieval info: PRIVATE: CLRrdaddress NUMERIC "0"
-- Retrieval info: PRIVATE: CLRrren NUMERIC "0"
-- Retrieval info: PRIVATE: CLRwraddress NUMERIC "0"
-- Retrieval info: PRIVATE: CLRwren NUMERIC "0"
-- Retrieval info: PRIVATE: Clock NUMERIC "0"
-- Retrieval info: PRIVATE: Clock_A NUMERIC "0"
-- Retrieval info: PRIVATE: Clock_B NUMERIC "0"
-- Retrieval info: PRIVATE: IMPLEMENT_IN_LES NUMERIC "0"
-- Retrieval info: PRIVATE: INDATA_ACLR_B NUMERIC "0"
-- Retrieval info: PRIVATE: INDATA_REG_B NUMERIC "1"
-- Retrieval info: PRIVATE: INIT_FILE_LAYOUT STRING "PORT_A"
-- Retrieval info: PRIVATE: INIT_TO_SIM_X NUMERIC "0"
-- Retrieval info: PRIVATE: INTENDED_DEVICE_FAMILY STRING "Stratix IV"
-- Retrieval info: PRIVATE: JTAG_ENABLED NUMERIC "0"
-- Retrieval info: PRIVATE: JTAG_ID STRING "NONE"
-- Retrieval info: PRIVATE: MAXIMUM_DEPTH NUMERIC "0"
-- Retrieval info: PRIVATE: MEMSIZE NUMERIC "96"
-- Retrieval info: PRIVATE: MEM_IN_BITS NUMERIC "0"
-- Retrieval info: PRIVATE: MIFfilename STRING "comp_time.mif"
-- Retrieval info: PRIVATE: OPERATION_MODE NUMERIC "3"
-- Retrieval info: PRIVATE: OUTDATA_ACLR_B NUMERIC "1"
-- Retrieval info: PRIVATE: OUTDATA_REG_B NUMERIC "0"
-- Retrieval info: PRIVATE: RAM_BLOCK_TYPE NUMERIC "2"
-- Retrieval info: PRIVATE: READ_DURING_WRITE_MODE_MIXED_PORTS NUMERIC "2"
-- Retrieval info: PRIVATE: REGdata NUMERIC "1"
-- Retrieval info: PRIVATE: REGq NUMERIC "0"
-- Retrieval info: PRIVATE: REGrdaddress NUMERIC "0"
-- Retrieval info: PRIVATE: REGrren NUMERIC "0"
-- Retrieval info: PRIVATE: REGwraddress NUMERIC "1"
-- Retrieval info: PRIVATE: REGwren NUMERIC "1"
-- Retrieval info: PRIVATE: SYNTH_WRAPPER_GEN_POSTFIX STRING "0"
-- Retrieval info: PRIVATE: USE_DIFF_CLKEN NUMERIC "0"
-- Retrieval info: PRIVATE: UseDPRAM NUMERIC "1"
-- Retrieval info: PRIVATE: VarWidth NUMERIC "0"
-- Retrieval info: PRIVATE: WIDTH_READ_A NUMERIC "12"
-- Retrieval info: PRIVATE: WIDTH_READ_B NUMERIC "12"
-- Retrieval info: PRIVATE: WIDTH_WRITE_A NUMERIC "12"
-- Retrieval info: PRIVATE: WIDTH_WRITE_B NUMERIC "12"
-- Retrieval info: PRIVATE: WRADDR_ACLR_B NUMERIC "0"
-- Retrieval info: PRIVATE: WRADDR_REG_B NUMERIC "1"
-- Retrieval info: PRIVATE: WRCTRL_ACLR_B NUMERIC "0"
-- Retrieval info: PRIVATE: enable NUMERIC "0"
-- Retrieval info: PRIVATE: rden NUMERIC "0"
-- Retrieval info: LIBRARY: altera_mf altera_mf.altera_mf_components.all
-- Retrieval info: CONSTANT: ADDRESS_REG_B STRING "CLOCK0"
-- Retrieval info: CONSTANT: CLOCK_ENABLE_INPUT_A STRING "BYPASS"
-- Retrieval info: CONSTANT: CLOCK_ENABLE_INPUT_B STRING "BYPASS"
-- Retrieval info: CONSTANT: CLOCK_ENABLE_OUTPUT_A STRING "BYPASS"
-- Retrieval info: CONSTANT: CLOCK_ENABLE_OUTPUT_B STRING "BYPASS"
-- Retrieval info: CONSTANT: INDATA_REG_B STRING "CLOCK0"
-- Retrieval info: CONSTANT: INIT_FILE STRING "comp_time.mif"
-- Retrieval info: CONSTANT: INTENDED_DEVICE_FAMILY STRING "Stratix IV"
-- Retrieval info: CONSTANT: LPM_TYPE STRING "altsyncram"
-- Retrieval info: CONSTANT: NUMWORDS_A NUMERIC "8"
-- Retrieval info: CONSTANT: NUMWORDS_B NUMERIC "8"
-- Retrieval info: CONSTANT: OPERATION_MODE STRING "BIDIR_DUAL_PORT"
-- Retrieval info: CONSTANT: OUTDATA_ACLR_A STRING "CLEAR0"
-- Retrieval info: CONSTANT: OUTDATA_ACLR_B STRING "CLEAR0"
-- Retrieval info: CONSTANT: OUTDATA_REG_A STRING "UNREGISTERED"
-- Retrieval info: CONSTANT: OUTDATA_REG_B STRING "UNREGISTERED"
-- Retrieval info: CONSTANT: POWER_UP_UNINITIALIZED STRING "FALSE"
-- Retrieval info: CONSTANT: RAM_BLOCK_TYPE STRING "M9K"
-- Retrieval info: CONSTANT: WIDTHAD_A NUMERIC "3"
-- Retrieval info: CONSTANT: WIDTHAD_B NUMERIC "3"
-- Retrieval info: CONSTANT: WIDTH_A NUMERIC "12"
-- Retrieval info: CONSTANT: WIDTH_B NUMERIC "12"
-- Retrieval info: CONSTANT: WIDTH_BYTEENA_A NUMERIC "1"
-- Retrieval info: CONSTANT: WIDTH_BYTEENA_B NUMERIC "1"
-- Retrieval info: CONSTANT: WRCONTROL_WRADDRESS_REG_B STRING "CLOCK0"
-- Retrieval info: USED_PORT: aclr 0 0 0 0 INPUT GND "aclr"
-- Retrieval info: USED_PORT: address_a 0 0 3 0 INPUT NODEFVAL "address_a[2..0]"
-- Retrieval info: USED_PORT: address_b 0 0 3 0 INPUT NODEFVAL "address_b[2..0]"
-- Retrieval info: USED_PORT: clock 0 0 0 0 INPUT VCC "clock"
-- Retrieval info: USED_PORT: q_a 0 0 12 0 OUTPUT NODEFVAL "q_a[11..0]"
-- Retrieval info: USED_PORT: q_b 0 0 12 0 OUTPUT NODEFVAL "q_b[11..0]"
-- Retrieval info: CONNECT: @aclr0 0 0 0 0 aclr 0 0 0 0
-- Retrieval info: CONNECT: @address_a 0 0 3 0 address_a 0 0 3 0
-- Retrieval info: CONNECT: @address_b 0 0 3 0 address_b 0 0 3 0
-- Retrieval info: CONNECT: @clock0 0 0 0 0 clock 0 0 0 0
-- Retrieval info: CONNECT: @data_a 0 0 12 0 GND 0 0 12 0
-- Retrieval info: CONNECT: @data_b 0 0 12 0 GND 0 0 12 0
-- Retrieval info: CONNECT: @wren_a 0 0 0 0 GND 0 0 0 0
-- Retrieval info: CONNECT: @wren_b 0 0 0 0 GND 0 0 0 0
-- Retrieval info: CONNECT: q_a 0 0 12 0 @q_a 0 0 12 0
-- Retrieval info: CONNECT: q_b 0 0 12 0 @q_b 0 0 12 0
-- Retrieval info: GEN_FILE: TYPE_NORMAL LUT.vhd TRUE
-- Retrieval info: GEN_FILE: TYPE_NORMAL LUT.inc FALSE
-- Retrieval info: GEN_FILE: TYPE_NORMAL LUT.cmp TRUE
-- Retrieval info: GEN_FILE: TYPE_NORMAL LUT.bsf FALSE
-- Retrieval info: GEN_FILE: TYPE_NORMAL LUT_inst.vhd FALSE
-- Retrieval info: LIB_FILE: altera_mf
