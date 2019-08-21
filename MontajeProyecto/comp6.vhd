
library ieee;
use ieee.std_logic_1164.all;

entity comp6 is
port (A, B: in std_logic_vector(5 downto 0);
		Aigual: out std_logic);
end comp6;

architecture sol of comp6 is
begin
process(A, B)
begin
	if A=B then Aigual<='1'; 
	else Aigual<='0'; 
	end if;
end process;
end sol;