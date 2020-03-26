------------------------------
-- Elementos de Sistemas
-- Avaliacao Pratica 1
--
-- 10/2019
--
-- Questão 1
------------------------------

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity questao1 is
  port (
	a,b,c,d,e: in  STD_LOGIC;
	f : out STD_LOGIC := '0'	);
end entity;

architecture  rtl OF questao1 IS

begin

  f <= (a and b) or (c and d) or (not(d) and not(e));

end architecture;
