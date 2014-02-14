----------------------------------------------------------------------------------
-- Company: USAFA	
-- Engineer: Suh
-- 
-- Create Date:    13:07:28 02/14/2014 
-- Design Name: one bitadder
-- Module Name:    full_adder - Behavioral 
-- Project Name: 
-- Target Devices: 
-- Tool versions: 
-- Description: 
--
-- Dependencies: 
--
-- Revision: 
-- Revision 0.01 - File Created
-- Additional Comments: 
--
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity full_adder is
    Port ( A : in  STD_LOGIC;
           B : in  STD_LOGIC;
           Ci : in  STD_LOGIC;
           S : out  STD_LOGIC;
           Co : out  STD_LOGIC);
end full_adder;

architecture Behavioral of full_adder is

signal A_Not, B_Not, C_Not, D, E, F, G, H, I, J : STD_LOGIC;


begin

A_Not <= not A;
B_Not <= not B;
C_Not <= not Ci;
D <= A_Not and B_Not and Ci;
E <= A_Not and B and C_Not;
F <= A and B and Ci;
G <= A and B_Not and C_Not;
H <= B and Ci;
I <= A and B;
J <= A and Ci;
S <= D or E or F or G;
Co <= H or I or J;

end Behavioral;

