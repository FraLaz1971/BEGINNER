100 LET BOTTLES = 99: LET BOTTLES$ = "99": LET BOTTLE$ = " bottles"
110 FOR A = 1 TO 99
120    PRINT BOTTLES$; BOTTLE$; " of beer on the wall, "; BOTTLES$; BOTTLE$; " of beer."
130    LET BOTTLES = BOTTLES - 1
140    IF BOTTLES > 0 THEN LET BOTTLES$ = STR$(BOTTLES): LET PRONOUN$ = "one"
150    IF BOTTLES = 0 THEN LET BOTTLES$ = "no more": LET PRONOUN$ = "it"
160    IF BOTTLES <> 1 THEN LET BOTTLE$ = " bottles"
170    IF BOTTLES = 1 THEN LET BOTTLE$ = " bottle"
180    PRINT "Take "; PRONOUN$; " down and pass it around, "; BOTTLES$; BOTTLE$; " of beer on the wall."
185    PRINT
190 NEXT A
200 PRINT "No more bottles of beer on the wall, no more bottles of beer."
210 PRINT "Go to the store and buy some more, 99 bottles of beer on the wall."

