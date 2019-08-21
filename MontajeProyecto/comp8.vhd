
library ieee;
use ieee.std_logic_1164.all;

entity comp8 is
port (A, B: in std_logic_vector(7 downto 0);
		Aigual: out std_logic);
end comp8;

architecture sol of comp8 is
begin
process(A, B)
begin
	if A=B then Aigual<='1'; 
	else Aigual<='0'; 
	end if;
end process;
end sol;