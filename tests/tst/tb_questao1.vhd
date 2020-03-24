library ieee;
use ieee.std_logic_1164.all;

library vunit_lib;
context vunit_lib.vunit_context;

entity tb_questao1 is
  generic (runner_cfg : string);
end entity;

architecture tb of tb_questao1 is

  component questao1 is
    port (
      a,b,c,d,e: in  STD_LOGIC;
      f : out STD_LOGIC := '0'	);
end component;

signal f : std_logic;
signal x : std_logic_vector(4 downto 0) := (others => '0');


begin

  u1 : questao1 port map(x(4),x(3),x(2),x(1),x(0),f);

  main : process
  begin
    test_runner_setup(runner, runner_cfg);

    x<="00000";
    wait for 200 ps;
    assert(f = '1')  report "Falha em teste: 1" severity error;

    x<="00001";
    wait for 200 ps;
    assert(f = '0')  report "Falha em teste: 1" severity error;

    x<="11001";
    wait for 200 ps;
    assert(f = '1')  report "Falha em teste: 1" severity error;

    x<="01111";
    wait for 200 ps;
    assert(f = '1')  report "Falha em teste: 1" severity error;

    x<="00110";
    wait for 200 ps;
    assert(f = '1')  report "Falha em teste: 1" severity error;

    test_runner_cleanup(runner); -- Simulacao acaba aqui

  end process;
end architecture;
