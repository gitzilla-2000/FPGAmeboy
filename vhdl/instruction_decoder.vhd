library IEEE;
use IEEE.STD_LOGIC_1164.ALL;


entity instruction_decoder is
	Port( 	I_clk : in STD_LOGIC;
			I_dataInst : in STD_LOGIC_VECTOR (15 down to 0);
			O_control  : in STD_LOGIC_VECTOR (15 down to 0)
	);
end instruction_decorder;

architecture Behavioral of instruction_decoder is

begin

process (I_clk)
	case(I(15 down to 8)) is
		when "11---110" => ALU A, N
		when "00000000" => NOP
		when "00001000" => LD R,N
		when "00010000" => STOP
		when "00011000" => JR N
		when "00100111" => DAA
		when "00101111" => CPL
		when "00110111" => SCF
		when "00111111" => CCF
		when "11001001" => RET
		when "11011001" => RETI
		when "11000011" => JP N
		when "11001101" => CALL N
		when "11101000" => ADD SP, N
		when "11111000" => LD HL, SP+N
		when "11101001" => JP HL 
		when "11111001" => LD SP, HL
		when "11110011" => DI (Disable Interrupts)
		when "11111011" => EI (Enable Interrupts)
		when "11011011" => RDC D | RD D | SDA D | SWAP D | SRL D | BIT N, D | RES N,D | SET N,D 
		when "11--0001" => POP R	
		when "11--0101" => PUSH R
		when "11---111" => RST N
begin
	
