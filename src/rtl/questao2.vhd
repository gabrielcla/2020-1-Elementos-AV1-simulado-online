------------------------------
-- Elementos de Sistemas
-- Avaliacao Pratica 1
--
-- 10/2019
--
-- Questão 5
------------------------------

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity questao2 is
  port (
    a  : in  STD_LOGIC_VECTOR(7 downto 0);
    sel: in  STD_LOGIC_VECTOR(1 downto 0);
    b  : out STD_LOGIC_VECTOR(3 downto 0));
end entity;

architecture  rtl OF questao2 IS

begin

  b <= not A(3 downto 0) when sel = "00" else
       A(3 downto 0)     when sel = "01" else
       "1010"            when sel = "10" else
       A(7 downto 4);

end architecture;
