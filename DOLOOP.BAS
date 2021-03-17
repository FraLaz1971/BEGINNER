10 CLS
20 IF INKEY$ = CHR$(27) THEN GOTO 80
30  REM va alla riga 28 e alla colonna 1
40  PRINT "Premere ESC to END THE PROGRAM"
50  REM termina il programma solo quando si preme ESC, che ha il codice 27
60 FOR I = 1 TO 20000: NEXT I
70 GOTO 20
80 PRINT "PROGRAM ENDED"
