----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 18.04.2021 19:41:33
-- Design Name: 
-- Module Name: Velicity_counter - Behavioral
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
use ieee.numeric_std.all;
use IEEE.STD_LOGIC_UNSIGNED.ALL;
-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity Velocity_counter is
    generic(
        g_CNT_WIDTH : natural := 4      -- Number of bits for counter         
           );
    Port ( 
            gen_o      : in std_logic;
            clk        : in std_logic;
            reset      : in  std_logic;       -- Synchronous reset                       
            cnt_o_A    : out std_logic_vector(g_CNT_WIDTH - 1 downto 0);
            cnt_o_B    : out std_logic_vector(g_CNT_WIDTH - 1 downto 0);
            cnt_o_C    : out std_logic_vector(g_CNT_WIDTH - 1 downto 0);
            cnt_o_D    : out std_logic_vector(g_CNT_WIDTH - 1 downto 0);
            ticks      : out std_logic_vector(g_CNT_WIDTH - 1 downto 0)
              
            );
end Velocity_counter;

architecture Behavioral of Velocity_counter is  
 -- Local counter
    signal s_cnt_local_A : unsigned(g_CNT_WIDTH - 1 downto 0);
    signal s_cnt_local_B : unsigned(g_CNT_WIDTH - 1 downto 0);
    signal s_cnt_local_C : unsigned(g_CNT_WIDTH - 1 downto 0);
    signal s_cnt_local_D : unsigned(g_CNT_WIDTH - 1 downto 0);
    signal s_ticks       : unsigned(g_CNT_WIDTH - 1 downto 0);
    signal counter       : unsigned(g_CNT_WIDTH - 1 downto 0);
begin
p_vel : process(clk,gen_o)
    begin
        if reset = '1' then
               s_ticks <= "0000";
               counter <= "0000";
        elsif rising_edge(gen_o) then                                     
               counter <= counter + 2;   -- counting up
        elsif rising_edge(clk) then           
               s_ticks <= counter; 
               counter <= "0000"; 
                                                                               
        end if;        
    end process p_vel;

ticks <= std_logic_vector(s_ticks);
-- s_ticks <= s_ticks * (18/5); -- prevod na km/h   
end Behavioral;

