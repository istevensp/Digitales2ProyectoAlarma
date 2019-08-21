
library ieee;
use ieee.std_logic_1164.all;

Entity ram is
PORT(address: IN std_logic_vector(5 downto 0);
		enintruso, enatraco: in std_logic;
		Q: OUT std_logic_vector(7 downto 0));
end ram;

Architecture sol of ram is
Begin
	process(enintruso, enatraco)
	begin
		if enintruso = '1' then 
			case address is
			
				when "000111" => Q <= "00000000";
				when "001000" => Q <= "01000010"; --I
				when "001001" => Q <= "01000010"; --I
				when "001010" => Q <= "01111110"; --I
				when "001011" => Q <= "01000010"; --I
				when "001100" => Q <= "01000010"; --I
				when "001101" => Q <= "00000000"; --ESPACIO
				when "001110" => Q <= "01111110"; --N
				
				when "001111" => Q <= "00000010"; --N
				when "010000" => Q <= "00000100"; --N
				when "010001" => Q <= "00001000"; --N
				when "010010" => Q <= "00010000"; --N
				when "010011" => Q <= "00100000"; --N
				when "010100" => Q <= "01111110"; --N
				when "010101" => Q <= "00000000"; --ESPACIO
				when "010110" => Q <= "00000010"; --T
				
				when "010111" => Q <= "00000010"; --T
				when "011000" => Q <= "01111110"; --T
				when "011001" => Q <= "00000010"; --T
				when "011010" => Q <= "00000010"; --T
				when "011011" => Q <= "00000000"; --ESPACIO
				when "011100" => Q <= "01111110"; --R
				when "011101" => Q <= "00010010"; --R
				when "011110" => Q <= "00010010"; --R
				
				when "011111" => Q <= "00010010"; --R
				when "100000" => Q <= "01101100"; --R
				when "100001" => Q <= "00000000"; --ESPACIO
				when "100010" => Q <= "01111100"; --U 
				when "100011" => Q <= "01000000"; --U
				when "100100" => Q <= "01000000"; --U
				when "100101" => Q <= "01000000"; --U
				when "100110" => Q <= "01111100"; --U
				
				when "100111" => Q <= "00000000"; --ESPACIO
				when "101000" => Q <= "01000100"; --S
				when "101001" => Q <= "01001010"; --S
				when "101010" => Q <= "01001010"; --S
				when "101011" => Q <= "01001010"; --S
				when "101100" => Q <= "00110010"; --S
				when "101101" => Q <= "00000000"; --ESPACIO
				when "101110" => Q <= "00111100";
				
				when "101111" => Q <= "01000010"; --O
				when "110000" => Q <= "01000010"; --O
				when "110001" => Q <= "01000010"; --O
				when "110010" => Q <= "00111100"; --O
				when others => Q <= "00000000";   --ESPACIO
				
			end case;
				
		elsif enatraco = '1' then
			case address is
				
				when "000111" => Q <= "00000000"; --ESPACIO
				when "001000" => Q <= "01111100"; --A
				when "001001" => Q <= "00010010"; --A
				when "001010" => Q <= "00010010"; --A
				when "001011" => Q <= "00010010"; --A
				when "001100" => Q <= "01111100"; --A
				when "001101" => Q <= "00000000"; --ESPACIO
				when "001110" => Q <= "00000010"; --T
				
				when "001111" => Q <= "00000010"; --T
				when "010000" => Q <= "01111110"; --T
				when "010001" => Q <= "00000010"; --T
				when "010010" => Q <= "00000010"; --T
				when "010011" => Q <= "00000000"; --ESPACIO
				when "010100" => Q <= "01111110"; --R
				when "010101" => Q <= "00010010"; --R
				when "010110" => Q <= "00010010"; --R
				
				when "010111" => Q <= "00010010"; --R
				when "011000" => Q <= "01101100"; --R
				
				when "011001" => Q <= "00000000"; --ESPACIO
				when "011010" => Q <= "01111110"; --A
				when "011011" => Q <= "00010010"; --A
				when "011100" => Q <= "00010010"; --A
				when "011101" => Q <= "00010010"; --A
				when "011110" => Q <= "01111110"; --A
				when "011111" => Q <= "00000000"; --ESPACIO
				
				when "100000" => Q <= "00111100"; --C
				when "100001" => Q <= "01000010"; --C
				when "100010" => Q <= "01000010"; --C
				when "100011" => Q <= "01000010"; --C
				when "100100" => Q <= "01000010"; --C
				when "100101" => Q <= "00000000"; --ESPACIO
				when "100110" => Q <= "00111100"; --O
				when "100111" => Q <= "01000010"; --O
				
				when "101000" => Q <= "01000010"; --O
				when "101001" => Q <= "01000010"; --O
				when "101010" => Q <= "00111100"; --O
				when others => Q <= "00000000";   --ESPACIO
		
			end case;
		end if;
	end process;
end sol;
					
						
						
			