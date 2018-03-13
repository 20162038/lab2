                        --	This is the AND gate
library ieee;
use ieee.std_logic_1164.all;

entity andGate is	
   port( A, B : in std_logic;
            F : out std_logic);
end andGate;

architecture func of andGate is 
begin
   F <= A and B; 
end func;
--*============================
                        --	This is the OR gate
library ieee;
use ieee.std_logic_1164.all;

entity orGate is 
   port( A, B : in std_logic;
            F : out std_logic);
end orGate;

architecture func of orGate is 
begin
   F <= A or B; 
end func;
--*============================
                        --	This is the NOT gate
library ieee;
use ieee.std_logic_1164.all;

entity notGate is	
   port( inPort : in std_logic;
        outPort : out std_logic);
end notGate;
--
architecture func of notGate is 
begin
  outPort <= not inPort; 
end func;
--*=======================*=====================

--	Now we write the definition for the 2-to-1 Mux
library ieee;
use ieee.std_logic_1164.all;

entity Mux_2_to_1 is
   port( D0, D1, S : in std_logic;
                 F : out std_logic);
end Mux_2_to_1;
--
architecture Func of Mux_2_to_1 is

   component andGate is          --import AND Gate entity
      port( A, B : in std_logic;
               F : out std_logic);
   end component;
 
   component orGate is           --import OR Gate entity
      port(	A, B : in std_logic;
               F : out std_logic);
   end component;

   component notGate is         --import NOT Gate entity
      port( inPort  : in std_logic;
            outPort : out std_logic);
   end component;

   signal andOut1, andOut2, invOut: std_logic;

begin
    -- Just like the real circuit, there 
    -- are four components: G1 to G4
   G1: notGate  port map(S, invOut);
   G2: andGate  port map(invOut, D0, andOut1);
   G3: andGate  port map(S, D1, andOut2);
   G4: orGate   port map(andOut1, andOut2, F); -- F
end Func;
---------------------------------------------------------END
---------------------------------------------------------END

--http://teahlab.com/VHDL_Code_2_to_1_Line_Multiplexer/