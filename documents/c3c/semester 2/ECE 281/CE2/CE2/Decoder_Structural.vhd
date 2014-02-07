----------------------------------------------------------------------------------
-- Company: Suh
-- Engineer: Suh
-- 
-- Create Date:    14:11:42 01/30/2014 
-- Design Name: Suh
-- Module Name:    Decoder_Structural - Structural 
-- Project Name: Suh
-- Target Devices: Suh
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

entity Decoder_Structural is
    Port ( I0 : in  STD_LOGIC;
           I1 : in  STD_LOGIC;
           EN : in  STD_LOGIC;
           Y0 : out  STD_LOGIC;
           Y1 : out  STD_LOGIC;
           Y2 : out  STD_LOGIC;
           Y3 : out  STD_LOGIC);
end Decoder_Structural;

architecture Structural of Decoder_Structural is

	COMPONENT Inverter
	PORT(
		I : IN std_logic;
		O : OUT std_logic
		);

	END COMPONENT;	

	COMPONENT and3
	PORT(
		I0 : IN std_logic;
		I1 : IN std_logic;
		I2 : IN std_logic;
		O : OUT std_logic
		);
	
	END COMPONENT;		

signal I0_NOT, I1_NOT, I2_NOT : STD_LOGIC;
		
begin

I0_Inverter: Inverter PORT MAP(
	I => I0,
	O => I0_NOT
	);
	
I1_Inverter: Inverter PORT MAP(
	I => I1,
	O => I1_NOT
	);

and3_Y0: and3 PORT MAP(
	I0 => I0_Not,
	I1 => I1_Not,
	I2 => EN,
	O => Y0
	);
	
and3_Y1: and3 PORT MAP(
	I0 => I0,
	I1 => I1_Not,
	I2 => EN,
	O => Y1
	);

and3_Y2: and3 PORT MAP(
	I0 => I0_Not,
	I1 => I1,
	I2 => EN,
	O => Y2
	);

and3_Y3: and3 PORT MAP(
	I0 => I0,
	I1 => I1,
	I2 => EN,
	O => Y3
	);

end Structural;