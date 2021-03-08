
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity tb_top1 is
   signal s_SW          : std_logic_vector(4 - 1 downto 0);
   signal s_LED         : std_logic_vector(8 - 1 downto 0);
end tb_top1;

architecture Behavioral of tb_top1 is

begin
 uut_top1 : entity work.top1
        port map(
             SW            => s_SW,
             LED           => s_LED
         
        );

    --------------------------------------------------------------------
    -- Data generation process
    --------------------------------------------------------------------
    p_stimulus : process
    begin
        -- Report a note at the beginning of stimulus process
        report "Stimulus process started" severity note;

        s_SW <= "0000"; wait for 100 ns;
       
        s_SW <= "0001"; wait for 100 ns;
        
        s_SW <= "0010"; wait for 100 ns;
       
        s_SW <= "0011"; wait for 100 ns;
       
        s_SW <= "0100"; wait for 100 ns;
             
        s_SW <= "0101"; wait for 100 ns;
             
        s_SW <= "0110"; wait for 100 ns;
             
        s_SW <= "0111"; wait for 100 ns;
             
        s_SW <= "1000"; wait for 100 ns;
             
        s_SW <= "1001"; wait for 100 ns;
             
        s_SW <= "1010"; wait for 100 ns;
             
        s_SW <= "1011"; wait for 100 ns;
             
        s_SW <= "1100"; wait for 100 ns;
             
        s_SW <= "1101"; wait for 100 ns;
             
        s_SW <= "1110"; wait for 100 ns;
             
        s_SW <= "1111"; wait for 100 ns;
               
       -- Report a note at the end of stimulus process
        report "Stimulus process finished" severity note;
        wait;
    end process p_stimulus;


end Behavioral;
