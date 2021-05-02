library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;
use IEEE.std_logic_unsigned.all;

entity cicloFor is   -- definición de puertos de la entidad principal
  port(
    datos_in1, datos_in2: in std_logic_vector(7 downto 0);         -- entradas de 8 bits
    dir: in std_logic_vector(1 downto 0);         -- bus de direcciones
    wr: in std_logic;
    clk: in std_logic;                                              -- habilitación de escritura
    salida: out std_logic_vector(15 downto 0));      -- salida de 16 bits
end cicloFor;

architecture rtl of cicloFor is
    type ram_type is array(3 downto 0 ) of std_logic_vector(7 downto 0);
    signal vector1, vector2 : ram_type;

begin
    escritura: process(wr,datos_in1,datos_in2,clk)
    begin
        if rising_edge(clk) then
            if (wr='1') then
                vector1(conv_integer(dir)) <= datos_in1;
                vector2(conv_integer(dir)) <= datos_in2;
            end if;
        end if;
    end process escritura;
    
    calculo: process(vector1,vector2)
        variable var : std_logic_vector(15 downto 0);
        
    begin
        var := "0000000000000000";

        for i in 0 to 3 loop
            var := var + vector1(i) * vector2(i);
        end loop ;
        
        salida<=var;
    end process calculo;
    
end architecture rtl;