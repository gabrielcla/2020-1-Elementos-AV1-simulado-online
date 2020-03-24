library ieee;
use ieee.std_logic_1164.all;

library vunit_lib;
context vunit_lib.vunit_context;

entity tb_questao5 is
  generic (runner_cfg : string);
end entity;

architecture tb of tb_questao5 is

  component questao2 is port (
    a  : in  STD_LOGIC_VECTOR(7 downto 0);
    sel: in  STD_LOGIC_VECTOR(1 downto 0);
    b  : out STD_LOGIC_VECTOR(3 downto 0));
  end component;

 signal sel : std_logic_vector(1 downto 0);
 signal a : std_logic_vector(7 downto 0);
 signal b : std_logic_vector(3 downto 0);


begin

  u1 : questao2 port map(a,sel,b);

  main : process
  begin
    test_runner_setup(runner, runner_cfg);

    a <= "11111100"; sel <= "00";
    wait for 200 ps;
    assert(b = "0011")  report "Falha em teste: 1" severity error;

    sel <= "01";
    wait for 200 ps;
    assert(b = "1100")  report "Falha em teste: 1" severity error;

    sel <= "10";
    wait for 200 ps;
    assert(b = "1010")  report "Falha em teste: 1" severity error;

    sel <= "11";
    wait for 200 ps;
    assert(b = "1111")  report "Falha em teste: 1" severity error;

    test_runner_cleanup(runner); -- Simulacao acaba aqui

  end process;
end architecture;
