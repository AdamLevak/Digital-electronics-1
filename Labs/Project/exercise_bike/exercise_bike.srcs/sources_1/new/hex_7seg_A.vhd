----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 19.04.2021 12:20:47
-- Design Name: 
-- Module Name: hex_7seg_A - Behavioral
-- Project Name: 
-- Target Devices: 
-- Tool Versions: 
-- Description: 
-- 
-- Dependencies: 
-- 
-- Revision:
-- Revision 0.01 - File Created
-- Additional Comments:
-- 
----------------------------------------------------------------------------------


library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity hex_7seg_A is
    Port 
    ( 
        hex_i_A : in STD_LOGIC_VECTOR (4 - 1 downto 0);
        seg_o_A : out STD_LOGIC_VECTOR (7 - 1 downto 0)
    );
end hex_7seg_A;

architecture Behavioral of hex_7seg_A is

begin
p_7seg_decoder : process(hex_i_A)
    begin
        case hex_i_A is
            when "0000" =>
                seg_o_A <= "0000001";     -- 0
            when "0001" =>
                seg_o_A <= "1001111";     -- 1
            when "0010" =>
                seg_o_A <= "0010010";     -- 2
            when "0011" =>
                seg_o_A <= "0000110";     -- 3
            when "0100" =>
                seg_o_A <= "1001100";     -- 4
            when "0101" =>
                seg_o_A <= "0100100";     -- 5
            when "0110" =>
                seg_o_A <= "0100000";     -- 6
            when "0111" =>
                seg_o_A <= "0001111";     -- 7
            when "1000" =>
                seg_o_A <= "0000000";     -- 8
            when "1001" =>
                seg_o_A <= "0000100";     -- 9
            when "1010" =>
                seg_o_A <= "0001000";     -- A
            when "1011" =>
                seg_o_A <= "1100000";     -- B
            when "1100" =>
                seg_o_A <= "0110001";     -- C
            when "1101" =>
                seg_o_A <= "1000010";     -- D            
            when "1110" =>
                seg_o_A <= "0110000";     -- E
            when others =>
                seg_o_A <= "0111000";     -- F
        end case;
    end process p_7seg_decoder;

end Behavioral;
