Consider the following pseudo code program:  
1 A=0 
2 B=0 
3 INPUT C 
4 FOR X = 1 TO C 
5 INPUT Y, Z 
6 IF Y>Z THEN A=A+1 
7 IF Y<Z THEN B=B+1 
8 END FOR 
9 OUTPUT A, B  
(a) Dry run this routine using the data:  5, 2, 4, 1, 2, 3, 1, 5, 5, 6, 8, 7, 4  
(b) Your answer should take the form of a TABLE with a single column for each variable used.                    Only make an entry in the table when a variable value CHANGES. 
(c) Now state the final output based on the data given
######## implementation in BASIC ########
10 A=0 
20 B=0 
30 INPUT C 
40 FOR X = 1 TO C 
50  INPUT Y, Z 
60  IF Y>Z THEN A=A+1 
70  IF Y<Z THEN B=B+1 
80 NEXT X 
90 PRINT A, B  
