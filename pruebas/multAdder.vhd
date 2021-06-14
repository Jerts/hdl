library ieee ;
    use ieee.std_logic_1164.all ;
    use ieee.numeric_std.all ;
    use IEEE.std_logic_unsigned.all;

entity multAdder is
  port (
    a,b,c,d: in std_logic_vector(3 downto 0);
    f1,f2 : in std_logic;
    sal1,sal2: inout std_logic;
    clk: in std_logic;
    suma : out std_logic_vector(7 downto 0)
  ) ;
end multAdder ; 

architecture arch of multAdder is
    signal a1,b1,c1,d1 : std_logic_vector(3 downto 0);
    signal aux1: std_logic;
begin

    cambioFFS: process(clk)
    begin
        if rising_edge(clk) then
            a1<=a;
            b1<=b;
            c1<=c;
            d1<=d;
            suma<= (a1*b1)+(c1*d1);
            
            sal1<=aux1;
        end if;
    end process cambioFFS;
    combo: process(f1,f2,sal1,sal2)
    begin
        aux1<=sal1 or f1;
        sal2<=aux1 and f2;
    end process combo;
end architecture ;