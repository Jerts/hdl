library ieee;                  -- bibliotecas y cláusulas de uso
use ieee.std_logic_1164.all;

entity forgenerate2 is   -- definición de puertos de la entidad principal
  port( 
        a,b:  in std_logic_vector(7 downto 0);         -- entradas de 8 bits
        s,s1: out std_logic_vector(7 downto 0));      -- salida de 8 bits
end forgenerate2;

architecture comportamiento of forgenerate2 is

    component mior3 is
        port(
            ac,bc: in std_logic;
            sc: out std_logic
        );
    end component mior3;

begin
    
    G0 : for n in 0 to 7 generate
        u0: mior3 port map (a(n),b(n),s1(n));

        G1: if n < 4 generate
            s(n)<= a(n) xor b(n);
        end generate G1;

        G2: if n > 3 generate
            s(n)<= a(n) and b(n);
        end generate G2;

    end generate G0; 
    
end architecture comportamiento;
------------------------------------------------------------------------------------------
library ieee;                  -- bibliotecas y cláusulas de uso
use ieee.std_logic_1164.all;

entity mior3 is
    port(
        ac,bc: in std_logic;
        sc: out std_logic
    );
end mior3;

architecture rtl of mior3 is
    
begin
    sc<=ac or bc;
end architecture rtl;
---------------------------------------------------------------------------------------------------