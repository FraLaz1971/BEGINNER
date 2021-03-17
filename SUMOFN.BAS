100 REM ***    SUM OF N NUMBERS       ***
110 REM *** THE NUMBERS ARE GIVEN     ***
120 REM *** BY THE USER INTERACTIVELY ***
180 REM print the program intestation
190 CLS
200 PRINT "************************"
210 PRINT "*** SUM OF N NUMBERS ***"
220 PRINT "************************"
230 PRINT
290 REM input from the user how many number to sum
300 INPUT "how many numbers do you want to sum"; N
302 REM avoid runtime errors: accept only positive numbers
305 IF N < 1 THEN PRINT "please enter a positive number": GOTO 300
306 REM initialise the variable s containing the final sum
308 REM and go to the sum computation subroutine, then continue from 330
310 S = 0
320 GOSUB 500
325 REM show the result and then go to ask if go on or end
330 PRINT "the sum is "; S
350 GOTO 800
490 REM sum computation subroutine
500 PRINT "please, enter "; N; " numbers to sum"
510 FOR I = 1 TO N
    520 PRINT "enter the number #"; I: INPUT J
    530 S = S + J
540 NEXT I
550 RETURN
790 REM routine for user input to end or continue
800 INPUT "do you want to compute another sum (y/n)"; Z$
810 IF Z$ = "n" OR Z$ = "N" THEN 900
820 GOTO 300
890 REM this is the finalization routine
900 PRINT "goodbye"
999 END
