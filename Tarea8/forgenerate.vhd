library ieee;                  -- bibliotecas y cláusulas de uso
use ieee.std_logic_1164.all;

entity forgenerate is   -- definición de puertos de la entidad principal
  port( 
        a,b:  in std_logic_vector(7 downto 0);         -- entradas de 8 bits
        s1: out std_logic_vector(7 downto 0));      -- salida de 8 bits
end forgenerate;

architecture comportamiento of forgenerate is

    component mior2 is
        port(
            ac,bc: in std_logic;
            sc: out std_logic
        );
    end component mior2;

begin
    
    G0 : for n in 0 to 7 generate
        u0: mior2 port map (a(n),b(n),s1(n));
    end generate G0; 
    
end architecture comportamiento;
------------------------------------------------------------------------------------------
library ieee;                  -- bibliotecas y cláusulas de uso
use ieee.std_logic_1164.all;

entity mior2 is
    port(
        ac,bc: in std_logic;
        sc: out std_logic
    );
end mior2;

architecture rtl of mior2 is
    
begin
    sc<=ac or bc;
end architecture rtl;
---------------------------------------------------------------------------------------------------