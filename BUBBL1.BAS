100 REM EXAMPLE OF BUBBLE SORT
110 LET N = 10: LET T = 0
115 PRINT "THIS PROGRAM SORTS"; N; " RANDOM NUMBERS"
120 DIM A(N): REM AS INTEGER
130 FOR L = 1 TO N
140     A(L) = INT(RND * 10 + 1)
150 NEXT
160 PRINT "WE HAVE THE FOLLOWING"; N; " NUMBERS"
170 FOR X = 1 TO N
180     PRINT "A("; X; ") = "; A(X)
190 NEXT X
200 REM HERE IS THE SORTING ALGORITHM
260 FOR X = 1 TO N
270     FOR Y = 1 TO N - 1
280         IF A(X) < A(Y) THEN T = A(Y): A(Y) = A(X): A(X) = T: REM SWAP A(X), A(Y)
290     NEXT Y
300 NEXT X
305 PRINT "HERE IS THE SORTED ARRAY"
310 FOR L = 1 TO N
320     PRINT "A("; L; ") = "; A(L)
330 NEXT
340 PRINT "DO YOU WANT TO SORT A NEW ARRAY? (yes/no)"
350 INPUT I$
360 IF LEFT$(I$, 1) = "Y" OR LEFT$(I$, 1) = "y" THEN GOTO 130
370 PRINT "GOODBYE"
940 END
