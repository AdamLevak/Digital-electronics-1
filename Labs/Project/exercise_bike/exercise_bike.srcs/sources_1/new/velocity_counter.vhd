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
            reset      : in std_logic;       -- Synchronous reset                       
            ticks      : out real  
            );
end Velocity_counter;

architecture Behavioral of Velocity_counter is  
 -- Local counter    
    signal s_ticks       : real;
    signal counter       : real;
    constant kmh         : real:= 3.6;  
begin
p_vel : process(clk,gen_o)
    begin
        if reset = '1' then
               s_ticks <= 0.0;
               counter <= 0.0;
        elsif rising_edge(gen_o) then                                     
               counter <= counter + 2.0;   -- counting up
        elsif rising_edge(clk) then           
               s_ticks <= counter * kmh ; 
               counter <= 0.0; 
                                                                             
        end if;        
    end process p_vel;

ticks <= s_ticks;  
end Behavioral;

