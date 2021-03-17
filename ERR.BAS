90  PRINT "******************************"
100 PRINT "*** LOGARITHM COMPUTATION  ***"
180 PRINT "*** ERROR HANDLING EXAMPLE ***"
190 PRINT "******************************"
195 ON ERROR GOSUB 2100
200 INPUT "Please type a number (-1000 TO END)"; N
210 IF N=-1000 THEN 3000
230 L = LOG(N)
240 PRINT "LOG of "; N; " is "; L
250 GOTO 200
260 END
2100 PRINT "ERROR DETECTED!"
2110 IF ERR = 5 THEN PRINT "Error executing line ";ERL;"The number must be greater than 0"
2140 PRINT "AT LINE ";ERL;", CODE="; ERR
2150 RETURN
3000 PRINT "END OF THE GAME, BYE :-)"
4000 END
