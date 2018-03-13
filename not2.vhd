library ieee;
use ieee.std_logic_1164.all;
 
entity not2 is
  port (
    i_bit0    : in  std_logic;
   	i_bit1    : in  std_logic;
	i_bit2    : in  std_logic;
	i_bit3    : in  std_logic;
	o_bit0    : out std_logic;
	o_bit1    : out std_logic;
	o_bit2    : out std_logic;
    o_bit3    : out std_logic
    );
end not2;
 
architecture rtl of not2 is
begin
  o_bit0 <= not i_bit0;
  o_bit1 <= not i_bit1;
  o_bit2 <= not i_bit2;
  o_bit3 <= not i_bit3;
end rtl;
