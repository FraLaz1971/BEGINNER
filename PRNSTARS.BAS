1010 INPUT "What is your name"; A$
1020 PRINT "Hello "; A$
1030 REM ask for the n. of asterisks to be printed
1040 S$ = ""
1050 INPUT "How many stars do you want to print"; S
1060 FOR I = 1 TO S
1070 S$ = S$ + "*"
1080 NEXT I
1090 PRINT S$
1100 REM ask if want to run again
1110 INPUT "Do you want to print more stars"; Q$
1120 IF LEN(Q$) = 0 THEN GOTO 1140
1130 Q$ = LEFT$(Q$, 1)
1140 IF (Q$ = "Y") OR (Q$ = "y") THEN GOTO 1030
1150 PRINT "Goodbye "; A$
1160 END
