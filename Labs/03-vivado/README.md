# *Lab 3*
## *Task 1*

dokončiť

## *Task 2*
- VHLD architecture

```vhdl
architecture Behavioral of mux_2bit_4to1 is
begin
    f_o     <= a_i when (sel_i = "00") else
               b_i when (sel_i = "01") else
               c_i when (sel_i = "10") else
               d_i;
 end architecture Behavioral;

```

- VHLD stimulus

```vhdl
 p_stimulus : process
    begin
        
        report "Stimulus process started" severity note;
        
        s_d <= "00"; s_c <= "00"; s_b <= "00"; s_a <= "00"; 
        s_sel <="00"; wait for 100 ns;
             
        s_d <="11"; s_c <="10"; s_b <= "01"; s_a <= "00"; 
        s_sel <="01"; wait for 100 ns;
       
        s_d <="00"; s_c <="01"; s_b <= "10"; s_a <= "11"; 
        s_sel <="10"; wait for 100 ns;
        
        s_d <="10"; s_c <="01"; s_b <= "01"; s_a <= "00"; 
        s_sel <="11"; wait for 100 ns;
       
        s_d <="11"; s_c <="01"; s_b <= "00"; s_a <= "10"; 
        s_sel <="11"; wait for 100 ns;
       
        report "Stimulus process finished" severity note;
        wait;
    end process p_stimulus;

```
- Screenshot 
![Signals](Images/signals.png)


## *Task 3*
- Prvý krok vytvorenie projektu
![Step 1](Images/1.png)

- krok 2 pridanie zdrojového súboru
![Step 2](Images/3.png)

- testbench file pridáme pomocou položky file ---> add sources 
![Step 3](Images/8.png)







