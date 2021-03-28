## Lab 7
# Task 1


| **D** | **Qn** | **Q(n+1)** | **Comments** |     
   | :-: | :-: | :-: | :-- |
   | 0 | 0 | 0 | No change | 
   | 0 | 1 | 0 | Reset |
   | 1 | 1 | 1 | No change | 
   | 1 | 0 | 1 | Set | 
- D q(n+1) = d 

   | **J** | **K** | **Qn** | **Q(n+1)** | **Comments** |
   | :-: | :-: | :-: | :-: | :-- |
   | 0 | 0 | 0 | 0 | No change |
   | 0 | 0 | 1 | 1 | No change |
   | 0 | 1 | 0 | 0 | Reset | 
   | 0 | 1 | 1 | 0 | Reset |
   | 1 | 0 | 0 | 1 | Set | 
   | 1 | 0 | 1 | 1 | Set |
   | 1 | 1 | 0 | 1 | Toggle |
   | 1 | 1 | 1 | 0 | Toggle |
- JK q(n+1) = j * /qn + /k * qn

   | **T** | **Qn** | **Q(n+1)** | **Comments** |
   | :-: | :-: | :-: | :-- |
   | 0 | 0 | 0 | No change | 
   | 0 | 1 | 1 | No change | 
   | 1 | 0 | 1 | Toggle | 
   | 1 | 1 | 0 | Toggle | 
- T q(n+1) = t * /qn + /t * qn
 
# Task 2
- VHDL code listing of the process p_d_latch
```vhdl
     p_d_latch : process (d, arst, en)
   begin
     if   (arst = '1') then
            q     <= '0';
            q_bar <= '1';
     elsif (en = '1')  then
            q     <= d;
            q_bar <= not d;
       
     end if;
   end process p_d_latch;  
```
- Listing of VHDL reset and stimulus processes from the testbench tb_d_latch.vhd

- Screenshot with simulated time waveforms


# Task 3
## d_ff_arst
- VHDL code listing of the process
-
- Screenshot with simulated time waveforms
## d_ff_rst
- VHDL code listing of the process

- Listing of VHDL reset and stimulus processes

- Screenshot with simulated time waveforms

## jk_ff_rst
- VHDL code listing of the process

- Listing of VHDL reset and stimulus processes

- Screenshot with simulated time waveforms

## t_ff_rst
- VHDL code listing of the process

- Listing of VHDL reset and stimulus processes

- Screenshot with simulated time waveforms


# Task 4








