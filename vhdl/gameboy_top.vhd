----------------------------------------------------------------------------------
-- Create Date:    12:47:38 10/10/2017 
-- Module Name:    gameboy_top - struct 
-- Project Name:   FPGAmeboy
-- Target Devices: 
-- See github.com
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity gameboy_top is
port ( 
    test_sig_in : in std_logic;
    test_sig_out : out std_logic
    );

end gameboy_top;

architecture struct of gameboy_top is

begin
test_sig_out <= test_sig_in; -- basic sanity check. Attach to LED and switch.


end struct;

