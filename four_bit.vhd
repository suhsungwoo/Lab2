----------------------------------------------------------------------------------
-- Company: USAFA
-- Engineer:Suh 
-- 
-- Create Date:    13:32:21 02/14/2014 
-- Design Name: 
-- Module Name:    four_bit - Structural
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

entity Lab2_4bit_Suh is
    Port ( A : in  STD_LOGIC_VECTOR (3 downto 0);
           B : in  STD_LOGIC_VECTOR (3 downto 0);
			  Ci : in STD_LOGIC;
           S : out  STD_LOGIC_VECTOR (3 downto 0);
			  Co : out STD_LOGIC);
end Lab2_4bit_Suh;

architecture Structural of Lab2_4bit_Suh is

component full_adder is
		port (A : in STD_LOGIC;
				B : in STD_LOGIC;
				Ci : in STD_LOGIC;
				Co : out STD_LOGIC;
				S : out STD_LOGIC);
end component full_adder;

signal C1, C2, C3, C0, C4 : STD_LOGIC;

begin

Bit0: component full_adder
	port map(A => A(0),
				B => B(0),
				Ci => C0,
				Co => C1,
				S => S(0));

Bit1: component full_adder
	port map(A => A(1),
				B => B(1),
				Ci => C1,
				Co => C2,
				S => S(1));

Bit2: component full_adder
	port map(A => A(2),
				B => B(2),
				Ci => C2,
				Co => C3,
				S => S(2));

Bit3: component full_adder
	port map(A => A(3),
				B => B(3),
				Ci => C3,
				Co => C4,
				S => S(3));

end Structural;
