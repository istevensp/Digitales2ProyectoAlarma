

library ieee;
use ieee.std_logic_1164.all;

Entity mux8a1 is
PORT(S: IN std_logic_vector(3 downto 0);
		Q: OUT std_logic_vector(7 downto 0));
end mux8a1;

Architecture sol of mux8a1 is
Begin
	with S select
	Q <=	"11111110" when "0000",
			"11111101" when "0001",
			"11111011" when "0010",
			"11110111" when "0011",
			"11101111" when "0100",
			"11011111" when "0101",
			"10111111" when "0110",
			"01111111" when "0111",
			"11111111" when others;
			
end sol;