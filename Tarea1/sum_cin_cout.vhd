library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;
use IEEE.std_logic_unsigned.all;

entity sum_cin_cout is
    port (
        a,b : in std_logic_vector(1 downto 0);
        cin: in std_logic;
        cout: out std_logic;
        suma: out std_logic_vector(1 downto 0)
    );
end entity sum_cin_cout;

architecture comportamiento of sum_cin_cout is

    signal a_x, b_x : std_logic_vector(1 downto 0);
    signal cin_x : std_logic;
    signal suma_aux : std_logic_vector(2 downto 0);

begin
    
    sumaCompleta : process( a,b,cin,a_x,b_x,cin_x,suma_aux)
    begin
        --Invertir entradas
        a_x <= not a;
        b_x <= not b;
        cin_x <= not cin;

        --Logica comun
		  --Se tuvo que completar cada señal con los bits necesarios para ser
		  --del tamaño de sum_aux
        suma_aux <= ("0"&a_x)+("0"&b_x)+("00"&cin_x);

        --Invertir salidas
        suma <= not suma_aux(1 downto 0);
        cout <= not suma_aux(2);

    end process ; -- sumaCompleta

end comportamiento ; -- comportamiento