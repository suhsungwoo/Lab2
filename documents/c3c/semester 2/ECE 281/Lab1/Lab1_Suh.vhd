----------------------------------------------------------------------------------
-- Company: usafa
-- Engineer: suh
-- 
-- Create Date:    00:51:10 01/23/2014 
-- Design Name:    first lab
-- Module Name:    Lab1_Suh - Behavioral 
-- Project Name:   first lab
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

entity Lab1_Suh is
    Port ( A : in  STD_LOGIC;
           B : in  STD_LOGIC;
           C : in  STD_LOGIC;
           X : out  STD_LOGIC;
           Y : out  STD_LOGIC;
           Z : out  STD_LOGIC);
end Lab1_Suh;

architecture Behavioral of Lab1_Suh is

signal NOT_A, NOT_B, NOT_C, D, E, F, G, H, I, J: STD_Logic;

begin

NOT_A <= not A;
NOT_B <= not B;
NOT_C <= not C;
D <= NOT_A and B;
E <= NOT_A and C;
F <= NOT_B and NOT_C;
J <= A and F;
G <= NOT_B and C;
H <= B and NOT_C;
I <= C;
X <= D or E or J;
Y <= G or H;
Z <= I;

end Behavioral;

