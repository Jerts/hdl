library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;
use IEEE.std_logic_unsigned.all;

entity functionVHDL is
    port(
        a,b,c,d,e,f: in std_logic_vector(3 downto 0);                -- entradas de 4 bits
        sal1,sal2,sal3: out std_logic_vector(3 downto 0)
    );      --salidas de 4 bits

end functionVHDL;

architecture comportamiento of functionVHDL is
    
    function suma(op1,op2:std_logic_vector) return std_logic_vector;
    function suma(op1,op2:std_logic_vector) return std_logic_vector is
        
        variable resultado: std_logic_vector(3 downto 0);
        
        begin
            resultado:=op1+op2;
            return resultado;
    
    end suma;

begin
    
    sal1<=suma(a,b);
    sal2<=suma(c,d);
    sal3<=suma(e,f);
    
    
end architecture comportamiento;