----------------------------------------------------------------------------------
-- Company: USAFA
-- Engineer: Suh
-- 
-- Create Date:    00:01:54 02/10/2014 
-- Design Name: Adder
-- Module Name:    Full_Adder - Behavioral 
-- Project Name: Lab 2
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

entity Full_Adder is
    Port ( A : in  STD_LOGIC;
           B : in  STD_LOGIC;
           Ci : in  STD_LOGIC;
           S : out  STD_LOGIC;
           Co : out  STD_LOGIC);
end Full_Adder;

architecture Behavioral of Full_Adder is

signal A_NOT, B_NOT, C_NOT, D, E, F, G, H, I, J : STD_LOGIC;

begin

A_NOT <= not A;
B_NOT <= not B;
C_NOT <= not Ci;
D <= A_NOT and B_NOT and Ci;
E <= A_NOT and B and C_NOT;
F <= A and B and Ci;
G <= A and B_NOT and C_NOT;
H <= A and B;
I <= B and Ci;
J <= A and Ci;
S <= D or E or F or G;
Co <= H or I or J;

end Behavioral;