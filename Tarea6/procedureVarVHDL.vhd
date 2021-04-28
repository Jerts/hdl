library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;
use IEEE.std_logic_unsigned.all;

entity procedureVarVHDL is
    port(
        a,b,c,d,e,f: in std_logic_vector(3 downto 0); -- entradas de 4 bits
        sal1,sal2,sal3: out std_logic_vector(3 downto 0)
    );      --salidas de 4 bits

end procedureVarVHDL;

architecture comportamiento of procedureVarVHDL is
    
    procedure suma(op1,op2:in std_logic_vector; resultado: out std_logic_vector);
    procedure suma(op1,op2:in std_logic_vector; resultado: out std_logic_vector) is
        begin
            resultado:= op1+op2;
    end suma;

begin
    
    process(a,b,c,d,e,f)
        variable sum1, sum2, sum3 : std_logic_vector(3 downto 0);
    begin
        suma(a,b,sum1);
        suma(c,d,sum2);
        suma(e,f,sum3);

        sal1<=sum1;
        sal2<=sum2;
        sal3<=sum3;
        
    end process ;
    
    
end architecture comportamiento;