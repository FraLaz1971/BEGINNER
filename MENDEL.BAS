1000 REM Mendelian Inheritance
1010 REM Quite BASIC Biology Project
1020 REM ***************************
2000 REM CLS
2010 REM A is an array containing a generation of flowers
2020 REM Each element, for example A$(17) is a string that is one of:
2030 REM "RR", "Rw", "wR", or "ww"
2040 REM The two letters correspond to the two genes controlling flower color 
2050 DIM A$(100)
2055 REM First we populate the initial generation
2060 FOR I = 0 TO 99
2070    IF (I < 50) THEN LET A$(I) = "ww": GOTO 2080 
2075    LET A$(I) = "RR"
2080 NEXT I
2090 LET G = 0
2100 REM B is the next generation of flowers
2110 ARRAY B
2200 PRINT "Generation ";
2210 PRINT G
2220 REM Draw flowers on the canvas
2230 GOSUB 5000
2240 REM Breed the next generation!
2250 FOR I = 0 TO 99
2260 REM Randomly pick two flowers: M and F
2270 LET M = A$(ROUND(RAND(99) + 0.5))
2280 LET F = A$(ROUND(RAND(99) + 0.5))
2290 REM Randomly select the two genes from M and F
2300 IF RAND(1) > 0.5 THEN LET B(I) = LEFT(M, 1) ELSE LET B(I) = LEFT(F, 1)
2310 IF RAND(1) > 0.5 THEN LET B(I) = B(I) + RIGHT(M, 1) ELSE LET B(I) = B(I) + RIGHT(F, 1)
2320 NEXT I
3330 REM Move the new generation to the array A
2340 FOR I = 0 TO 99
2350 LET A$(I) = B(I)
2360 NEXT I
2370 LET G = G + 1
2380 GOTO 2200
5000 REM Subroutine -- Draw 100 flowers from the A array
5002 LET R = 0
5004 LET W = 0
5010 FOR I = 0 TO 9
5020 FOR J = 0 TO 9
5030 REM Red is dominant so only "ww" results in white flowers
5040 IF A$(I*10 + J) = "ww" THEN GOTO 5080
5050 PLOT I, J, "red"
5060 LET R = R + 1
5070 GOTO 5100
5080 PLOT I, J, "white"
5090 LET W = W + 1
5100 NEXT J
5110 NEXT I
5120 PRINT "Red: ";
5130 PRINT R;
5140 PRINT "  White: ";
5150 PRINT W
5160 RETURN
