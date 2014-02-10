--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   00:03:00 02/10/2014
-- Design Name:   
-- Module Name:   C:/Users/C16Sung.Suh/Documents/C3C/Semester 2/ECE 281/Lab 2/Lab2/Testbench.vhd
-- Project Name:  Lab2
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: Full_Adder
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
 
ENTITY Testbench IS
END Testbench;
 
ARCHITECTURE behavior OF Testbench IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT Full_Adder
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
   uut: Full_Adder PORT MAP (
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
	  
      wait;
   end process;

END;
