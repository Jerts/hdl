library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;
use IEEE.std_logic_unsigned.all;

entity procedureVHDL is
    port(
        a,b,c,d,e,f: in std_logic_vector(3 downto 0); -- entradas de 4 bits
        sal1,sal2,sal3: out std_logic_vector(3 downto 0)
    );      --salidas de 4 bits

end procedureVHDL;

architecture comportamiento of procedureVHDL is
    
    procedure suma(op1,op2:in std_logic_vector; signal resultado: out std_logic_vector);
    procedure suma(op1,op2:in std_logic_vector; signal resultado: out std_logic_vector) is
        begin
            resultado<= op1+op2;
    end suma;

begin
    
    suma(a,b,sal1);
    suma(c,d,sal2);
    suma(e,f,sal3);       

end architecture comportamiento;