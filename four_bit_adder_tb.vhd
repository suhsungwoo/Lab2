--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   14:18:48 02/14/2014
-- Design Name:   
-- Module Name:   C:/Users/C16Sung.Suh/Documents/C3C/Semester 2/ECE 281/Lab 2/four_bit_adder_tb.vhd
-- Project Name:  Lab2
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: Lab2_4bit_Suh
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
 
ENTITY four_bit_adder_tb IS
END four_bit_adder_tb;
 
ARCHITECTURE behavior OF four_bit_adder_tb IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT Lab2_4bit_Suh
    PORT(
         A : IN  std_logic_vector(3 downto 0);
         B : IN  std_logic_vector(3 downto 0);
         Ci : IN  std_logic;
         S : OUT  std_logic_vector(3 downto 0);
         Co : OUT  std_logic
        );
    END COMPONENT;
    

   --Inputs
   signal A : std_logic_vector(3 downto 0) := (others => '0');
   signal B : std_logic_vector(3 downto 0) := (others => '0');
   signal Ci : std_logic := '0';

 	--Outputs
   signal S : std_logic_vector(3 downto 0);
   signal Co : std_logic;
   -- No clocks detected in port list. Replace <clock> below with 
   -- appropriate port name 
 
   constant <clock>_period : time := 10 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: Lab2_4bit_Suh PORT MAP (
          A => A,
          B => B,
          Ci => Ci,
          S => S,
          Co => Co
        );

   -- Clock process definitions
   <clock>_process :process
   begin
		<clock> <= '0';
		wait for <clock>_period/2;
		<clock> <= '1';
		wait for <clock>_period/2;
   end process;
 

   -- Stimulus process
   stim_proc: process
   begin		
      -- hold reset state for 100 ns.
      wait for 100 ns;	

      wait for <clock>_period*10;

      -- insert stimulus here 

      wait;
   end process;

END;
