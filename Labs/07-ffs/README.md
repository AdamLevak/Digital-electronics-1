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
- T q(n+1) = t * /qn + /t*qn

# Task 2
