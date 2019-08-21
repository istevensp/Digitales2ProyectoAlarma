
library ieee;
use ieee.std_logic_1164.all;

entity mss is 
port(clock, resetn, tecla, clave, start, ok10s, sp, sensores, ok10se, ok2s, ok20s, clavea, oki, okj, okk: in std_logic;
	  ldn, en1, en2, en3, en4, en10s, ld10s, alarma, sirena, en10se, ld10se, en2s, ld2s, en20s,ld20s, ua, ldi, ldj, ldk, eni, enj, enk, enintruso, enatraco: out std_logic;
	  estados: out std_logic_vector(5 downto 0));
end mss;

architecture comp of mss is
	type estado is (s0, s1, s2, s3, s4, s5, s6, s7, s8, s9, s10, s11, s12, s13, s14, s15, s16, s17, s18, s19, s20, s21, s22,
						 s23, s24, s25, s26);
	signal y: estado;
	
begin
	process(resetn, clock)
	begin
		if resetn = '0' then y <= s0;
		elsif (clock'event and clock='1') then 
			case y is 
				when s0 => if start = '1' then y <= s1;
							  else y <= s0;
							  end if;
							  
				when s1 => if start = '1' then y <= s1;
							  else y <= s2;
							  end if;
				  
				when s2 => if tecla = '1' then y <= s3;
							  else y <= s2;
							  end if;
							  
				when s3 => if tecla = '1' then y <= s3;       
							  else y <= s4;
							  end if;
				
				when s4 => if tecla = '1' then y <= s5;
							  else y <= s4;
							  end if;
							  
				when s5 => if tecla = '1' then y <= s5;       
							  else y <= s6;
							  end if;
							  
				when s6 => if tecla = '1' then y <= s7;
							  else y <= s6;
							  end if;
							  
				when s7 => if tecla = '1' then y <= s7;       
							  else y <= s8;
							  end if;
							  
			   when s8 => if tecla = '1' then y <= s9;
							  else y <= s8;
							  end if;
							  
				when s9 => if tecla = '1' then y <= s9;       
							  else y <= s10;
							  end if;
							  
				when s10 => if clave = '1' then y <= s11;
							  else y <= s2;
							  end if;
							  
				when s11 => if sp = '0' then 
								if ok10s = '1' then y <= s13;
								elsif ok10s = '0' then y <= s11;
								end if;
							  elsif sp = '1' then y <= s12;
							  end if;
							  
				when s12 => if sp = '0' then y <= s13;
								else y <= s12;
								end if;
			  
				when s13 => if sensores = '1' then y <= s25;
								elsif sensores = '0' then 
									if sp = '1' then y <= s15;
									elsif sp = '0' then y <= s13;
									end if;
								end if;
								
				when s14 => if ok20s = '1' then y <= s25;
								else y <= s14;
									if okj = '0' then y <= s14;
									elsif okj = '1' then 
										if okk = '0' then y <= s14;
										elsif okk = '1' then 
											if oki = '1' then y <= s14;
											elsif oki = '0' then y <= s14;
											end if;
										end if;
									end if;
								end if;
				
				when s15 => if tecla = '1' then y <= s16;
								elsif tecla = '0' then 
									if ok10se = '1' then y <= s14;
									elsif ok10se = '0' then y <= s15;
									end if;
								end if;
								
				when s16 => if tecla = '1' then 
									if ok10se = '0' then y <= s16;
									elsif ok10se = '1' then y <= s14;
									end if;
								elsif tecla = '0' then y <= s17;
								end if;
								
				when s17 => if tecla = '1' then y <= s18;
								elsif tecla = '0' then 
									if ok10se = '1' then y <= s14;
									elsif ok10se = '0' then y <= s17;
									end if;
								end if;
								
				when s18 => if tecla = '1' then 
									if ok10se = '0' then y <= s18;
									elsif ok10se = '1' then y <= s14;
									end if;
								elsif tecla = '0' then y <= s19;
								end if;
								
				when s19 => if tecla = '1' then y <= s20;
								elsif tecla = '0' then 
									if ok10se = '1' then y <= s14;
									elsif ok10se = '0' then y <= s19;
									end if;
								end if;
								
				when s20 => if tecla = '1' then 
									if ok10se = '0' then y <= s20;
									elsif ok10se = '1' then y <= s14;
									end if;
								elsif tecla = '0' then y <= s21;
								end if;
								
				when s21 => if tecla = '1' then y <= s22;
								elsif tecla = '0' then 
									if ok10se = '1' then y <= s14;
									elsif ok10se = '0' then y <= s21;
									end if;
								end if;
								
				when s22 => if tecla = '1' then 
									if ok10se = '0' then y <= s22;
									elsif ok10se = '1' then y <= s14;
									end if;
								elsif tecla = '0' then y <= s23;
								end if;
								
				when s23 => if clave = '1' then y <= s24;
								elsif clave = '0' then 
									if clavea = '0' then y <= s14;
									elsif clavea = '1' then y <= s26;
									end if;
								end if;
								
				when s24 => if ok2s = '1' then y <= s2;
								else y <= s24;
								end if;
				
				when s25 => if okj = '0' then y <= s25;
							   elsif okj = '1' then 
								 if okk = '0' then y <= s25;
								 elsif okk = '1' then 
									 if oki = '1' then y <= s25;
									 elsif oki = '0' then y <= s25;
									 end if;
								 end if;
							   end if;                 --Aqui se muestra mensaje intruso
				
				when s26 => if okj = '0' then y <= s26;
							   elsif okj = '1' then 
								 if okk = '0' then y <= s26;
								 elsif okk = '1' then 
									 if oki = '1' then y <= s26;
									 elsif oki = '0' then y <= s26;
									 end if;
								 end if;
							   end if;                -- Aqui se muestra mensaje atraco
			
			end case;				  
		end if;
	end process;
	
	process(y, start, tecla, oki, okj, okk, ok20s)
	begin 
		ldn<='0'; en1<='0'; en2<='0'; en3<='0'; en4<='0'; en10s<='0'; ld10s<='0'; alarma<='0'; sirena<='0'; ld10se<='0'; enintruso<='0'; enatraco<='0';
		en2s<='0'; ld2s<='0'; en20s<='0'; ld20s<='0'; ua<='0'; en10se<='0'; ldi<='0'; ldj<='0'; ldk<='0'; eni<='0'; enj<='0'; enk<='0'; estados<="000000";
		
		case y is 
			
			when s0 => ldn<='1'; ld10s<='1'; ld20s<='1'; ld2s<='1'; ld10se<='1'; ldi<='1'; ldj<='1'; ldk<='1'; estados<="000000";
			
			when s1 => estados<="000001";
		
			when s2 => if tecla='1' then en1<='1'; end if; estados<="000010"; ld2s<='1'; ld10se<='1'; 
		
			when s3 => estados<="000011"; ld10se<='1';
			
			when s4 => if tecla='1' then en2<='1'; end if; estados<="000100";
			
			when s5 => estados<="000101";
			
			when s6 => if tecla='1' then en3<='1'; end if; estados<="000110";
			
			when s7 => estados<="000111";
			
			when s8 => if tecla='1' then en4<='1'; end if; estados<="001000";
			
			when s9 => estados<="001001";
			
			when s10 => estados<="001010";
			
			when s11 => alarma<='1'; en10s<='1'; estados<="001011";
			
			when s12 => alarma<='1'; estados<="001100";
			
			when s13 => if tecla = '1' then en1<='1'; end if; alarma<='1'; estados<="001101";
			
			when s14 => if ok20s = '0' then
								if okj = '0' then enj <= '1';
								elsif okj = '1' then 
									if okk = '0' then ldj <= '1'; enk <= '1'; 
									elsif okk = '1' then 
										if oki = '1' then ldi <= '1'; ldk <= '1'; ldj <= '1';
										elsif oki = '0' then eni <= '1'; ldk <= '1'; ldj <= '1'; 	
										end if; 
									end if;
								end if;
							end if;
						   enj <= '1'; enintruso <= '1'; sirena<='1'; en20s<='1'; estados<="001110";
			
			when s15 => if tecla = '1' then en1<='1'; end if; alarma<='1'; en10se<='1'; sirena<='1'; estados<="001111";
			
			when s16 => alarma<='1'; en10se<='1'; sirena<='1'; estados<="010000";
			
			when s17 => if tecla = '1' then en2<='1'; end if; alarma<='1'; en10se<='1'; sirena<='1'; estados<="010001";
			
			when s18 => alarma<='1'; en10se<='1'; sirena<='1'; estados<="010010";
			
			when s19 => if tecla = '1' then en3<='1'; end if; alarma<='1'; en10se<='1'; sirena<='1'; estados<="010011";
			
			when s20 => alarma<='1'; en10se<='1'; sirena<='1'; estados<="010100";
			
			when s21 => if tecla = '1' then en4<='1'; end if; alarma<='1'; en10se<='1'; sirena<='1'; estados<="010101";
			
			when s22 => alarma<='1'; en10se<='1'; sirena<='1'; estados<="010110";
			
			when s23 => alarma<='1'; sirena<='1'; estados<="010111";
			
			when s24 => en2s<='1'; ua<='1'; estados<="011000";
			
			when s25 => if okj = '0' then enj <= '1';
							elsif okj = '1' then 
								if okk = '0' then ldj <= '1'; enk <= '1'; 
								elsif okk = '1' then 
									if oki = '1' then ldi <= '1'; ldk <= '1'; ldj <= '1';
									elsif oki = '0' then eni <= '1'; ldk <= '1'; ldj <= '1'; 	
									end if; 
								end if;
						   end if;
						   enj <= '1'; enintruso <= '1'; estados<="011001";
			
			when s26 => if okj = '0' then enj <= '1';
							elsif okj = '1' then 
								if okk = '0' then ldj <= '1'; enk <= '1'; 
								elsif okk = '1' then 
									if oki = '1' then ldi <= '1'; ldk <= '1'; ldj <= '1';
									elsif oki = '0' then eni <= '1'; ldk <= '1'; ldj <= '1'; 	
									end if; 
								end if;
						   end if;
						   enj <= '1'; enatraco<= '1';estados<="011010";
			
		end case;
	end process;
end comp;
		
		
		
		
		
		
		
		
		
		
		
		
		