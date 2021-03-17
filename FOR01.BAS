2  REM EXERCISE 01
5  PRINT "Please enter couples of numbers"
7  I$="in.txt"
9  O$="out.txt"
10 A=0 
20 B=0
25 PRINT "Reading n. of couples"
27 OPEN I$ FOR INPUT AS #3
29 OPEN O$ FOR OUTPUT AS #1
30 INPUT #3, C 
35 PRINT "n. of couples is", C
40 FOR X = 1 TO C 
45 PRINT "couple n.";X
50  INPUT #3, Y, Z 
60  IF Y>Z THEN A=A+1 
70  IF Y<Z THEN B=B+1 
75  PRINT "coup.";C;" X=";X;" Y=";Y;" A=";A;" B=";B
77  PRINT #1,C;" ";X;" ";Y;" ";A;" ";B
80 NEXT X 
85 PRINT "The final output is", A,B
90 PRINT A, B
100 CLOSE #3
110 CLOSE #4
1100 REM Consider the following pseudo code program:  
1120 REM 1 A=0 
1130 REM 2 B=0 
1140 REM 3 INPUT C 
1150 REM 4 FOR X = 1 TO C 
1160 REM 5 INPUT Y, Z 
1170 REM 6 IF Y>Z THEN A=A+1 
1180 REM 7 IF Y<Z THEN B=B+1 
1190 REM 8 END FOR 
1200 REM 9 OUTPUT A, B  
1210 REM (a) Dry run this routine using the data:  6, 2, 4, 1, 2, 3, 1, 5, 5, 6, 8, 7, 4  
1220 REM (b) Your answer should take the form of a TABLE with a single column for each variable used.                    1230 REM Only make an entry in the table when a variable value CHANGES. 
1240 REM (c) Now state the final output based on the data given
1250 REM ######## implementation in BASIC ########
