```vhdl
entity multiplier is
  Port ( clock : in  STD_LOGIC;
              reset : in  STD_LOGIC;
              data_a : in  STD_LOGIC_VECTOR (7 downto 0);
              data_b : in  STD_LOGIC_VECTOR (7 downto 0);
              result : out  STD_LOGIC_VECTOR (15 downto 0));
end entity;

architecture behavioral of multiplier is

  signal product : STD_LOGIC_VECTOR(15 downto 0) := (others => '0');
begin

process (clock,reset)
begin
  if reset = '1' then
    product <= (others => '0');
  elsif rising_edge(clock) then
    product <= data_a * data_b; -- This line might cause issues
  end if;
end process;

result <= product;
end architecture;
```