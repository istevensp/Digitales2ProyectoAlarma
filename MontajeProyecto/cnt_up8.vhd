
library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.std_logic_unsigned.all;

entity cnt_up8 is
	port (en, ld, resetn, clock: in std_logic;
			sal: out std_logic_vector(7 downto 0));
end cnt_up8; 
architecture comp of cnt_up8 is	
signal temp: std_logic_vector(7 downto 0); 
begin
	process (resetn ,clock, temp)
	begin
		if (resetn = '0') then temp <= "00000000"; 
		elsif (clock'event and clock='1') then
			if (ld = '1') then temp <= "00000000";
			elsif (en = '1') then temp <= temp + 1;
			end if;
		end if;
	sal <= temp;
	end process;
end comp;
