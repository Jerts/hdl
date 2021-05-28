library ieee ;
    use ieee.std_logic_1164.all ;
    use ieee.numeric_std.all ;

entity fsm_beh_vhdl is
  port (
    reset, w, clk : in std_logic;
    s : out std_logic
  ) ;
end fsm_beh_vhdl ; 

architecture arch of fsm_beh_vhdl is
  type estados is (A,B,C,D,E,F,G,H,I);
  signal estado_actual, sig_estado : estados;
begin

  sigEstado_reset: process(clk, reset)
  begin
    if (reset='1') then
      estado_actual <= A ;
    elsif rising_edge(clk) then
      estado_actual <= sig_estado;
    end if;
  end process sigEstado_reset;

  cambio_estados: process(estado_actual,w)
  begin
    sig_estado <= estado_actual;
    case( estado_actual ) is
      when A =>
        if w='0' then
          sig_estado <= B;
        elsif w='1' then
          sig_estado <= F;
        end if ;
      when B => 
        if w='0' then
          sig_estado <= C;
        elsif w='1' then
          sig_estado <= F;
        end if ;    
      when C => 
        if w='0' then
          sig_estado <= D;
        elsif w='1' then
          sig_estado <= F;
        end if ; 
      when D => 
        if w='0' then
          sig_estado <= E;
        elsif w='1' then
          sig_estado <= F;
        end if ;
      when E => 
        if w='0' then
          sig_estado <= E;
        elsif w='1' then
          sig_estado <= F;
        end if ;
      when F => 
        if w='0' then
          sig_estado <= B;
        elsif w='1' then
          sig_estado <= G;
        end if ;
      when G => 
        if w='0' then
          sig_estado <= B;
        elsif w='1' then
          sig_estado <= H;
        end if ;
      when H => 
        if w='0' then
          sig_estado <= B;
        elsif w='1' then
          sig_estado <= I;
        end if ;
      when I => 
        if w='0' then
          sig_estado <= B;
        elsif w='1' then
          sig_estado <= I;
        end if ;
      when others => sig_estado <= A;
    end case ;
  end process cambio_estados;

  salidas: process(estado_actual)
  begin
    s<='0';
    case( estado_actual ) is
      when E => s<='1';
      when I => s<='1';
      when others => s<= '0';
    end case ;
  end process salidas;
end architecture ;