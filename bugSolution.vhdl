```vhdl
library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity multiplier is
  Port ( clock : in  STD_LOGIC;
              reset : in  STD_LOGIC;
              data_a : in  STD_LOGIC_VECTOR (7 downto 0);
              data_b : in  STD_LOGIC_VECTOR (7 downto 0);
              result : out  STD_LOGIC_VECTOR (15 downto 0));
end entity;

architecture behavioral of multiplier is

  signal product : unsigned(15 downto 0) := (others => '0');
  signal data_a_unsigned : unsigned(7 downto 0);
  signal data_b_unsigned : unsigned(7 downto 0);
begin

  data_a_unsigned <= unsigned(data_a);
  data_b_unsigned <= unsigned(data_b);

process (clock,reset)
begin
  if reset = '1' then
    product <= (others => '0');
  elsif rising_edge(clock) then
    product <= data_a_unsigned * data_b_unsigned;
  end if;
end process;

result <= std_logic_vector(product);
end architecture;
```