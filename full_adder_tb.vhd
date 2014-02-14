--------------------------------------------------------------------------------
-- Company: USAFA  
-- Engineer:	Suh
--
-- Create Date:   13:08:32 02/14/2014
-- Design Name:   tb
-- Module Name:   C:/Users/C16Sung.Suh/Documents/C3C/Semester 2/ECE 281/Lab 2/full_adder_tb.vhd
-- Project Name:  Lab2
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: full_adder
-- 
-- Dependencies:
-- 
-- Revision:
-- Revision 0.01 - File Created
-- Additional Comments:
--
-- Notes: 
-- This testbench has been automatically generated using types std_logic and
-- std_logic_vector for the ports of the unit under test.  Xilinx recommends
-- that these types always be used for the top-level I/O of a design in order
-- to guarantee that the testbench will bind correctly to the post-implementation 
-- simulation model.
--------------------------------------------------------------------------------
LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
 
-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--USE ieee.numeric_std.ALL;
 
ENTITY full_adder_tb IS
END full_adder_tb;
 
ARCHITECTURE behavior OF full_adder_tb IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT full_adder
    PORT(
         A : IN  std_logic;
         B : IN  std_logic;
         Ci : IN  std_logic;
         S : OUT  std_logic;
         Co : OUT  std_logic
        );
    END COMPONENT;
    

   --Inputs
   signal A : std_logic := '0';
   signal B : std_logic := '0';
   signal Ci : std_logic := '0';

 	--Outputs
   signal S : std_logic;
   signal Co : std_logic;
   -- No clocks detected in port list. Replace <clock> below with 
   -- appropriate port name 
 
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: full_adder PORT MAP (
          A => A,
          B => B,
          Ci => Ci,
          S => S,
          Co => Co
        );

 

   -- Stimulus process
   stim_proc: process
   begin		
    
		A <= '0';
		B <= '0';
		Ci <= '0';
		wait for 100 ns;

		A <= '0';
		B <= '0';
		Ci <= '1';
		wait for 100 ns;

		A <= '0';
		B <= '1';
		Ci <= '0';
		wait for 100 ns;
		
		A <= '0';
		B <= '1';
		Ci <= '1';
		wait for 100 ns;
		
		A <= '1';
		B <= '0';
		Ci <= '0';
		wait for 100 ns;
		
		A <= '1';
		B <= '0';
		Ci <= '1';
		wait for 100 ns;
		
		A <= '1';
		B <= '1';
		Ci <= '0';
		wait for 100 ns;
		
		A <= '1';
		B <= '1';
		Ci <= '1';
		wait for 100 ns;
		
   end process;

END;
