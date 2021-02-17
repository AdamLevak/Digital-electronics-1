#*Lab 2*
##*Task 1*
| **Dec. equivalent** | **B[1:0]** | **A[1:0]** | **B is greater than A** | **B equals A** | **B is less than A** |
| :-: | :-: | :-: | :-: | :-: | :-: |
| 0 | 0 0 | 0 0 | 0 | 1 | 0 |
| 1 | 0 0 | 0 1 | 0 | 0 | 1 |
| 2 | 0 0 | 1 0 | 0 | 0 | 1 |
| 3 | 0 0 | 1 1 | 0 | 0 | 1 |
| 4 | 0 1 | 0 0 | 1 | 0 | 0 |
| 5 | 0 1 | 0 1 | 0 | 1 | 0 |
| 6 | 0 1 | 1 0 | 0 | 0 | 1 |
| 7 | 0 1 | 1 1 | 0 | 0 | 1 |
| 8 | 1 0 | 0 0 | 1 | 0 | 0 |
| 9 | 1 0 | 0 1 | 1 | 0 | 0 |
| 10 | 1 0 | 1 0 | 0 | 1 | 0 |
| 11 | 1 0 | 1 1 | 0 | 0 | 1 |
| 12 | 1 1 | 0 0 | 1 | 0 | 0 |
| 13 | 1 1 | 0 1 | 1 | 0 | 0 |
| 14 | 1 1 | 1 0 | 1 | 0 | 0 |
| 15 | 1 1 | 1 1 | 0 | 1 | 0 |

- SoP (equals) = (not(b<sub>1</sub>) * not(b0) * not(a1) * not(a0))+(not(b1) * b0 * not(a1) * a0)+(b1 * not(b0) * a1 * not(a0))+(b1 * b0 * a1 * a0)

- PoS (less) = (b1+b0+a1+a0) * (b1+not(b0)+a1+a0) * (b1+not(b0)+a1+not(a0)) * (not(b1)+b0+a1+a0) * (not(b1)+b0+a1+not(a0)) * (not(b1)+b0+not(a1)+a0) * (not(b1)+b0+a1+not(a0)) * (not(b1)+not(b0)+a1+not(a0)) * (not(b1)+not(b0)+not(a1)+a0) * (not(b1)+not(b0)+not(a1)+not(a0)) (*pracovna verzia*)

- https://www.edaplayground.com/x/vHX2 eda odkaz (hotovo) 
