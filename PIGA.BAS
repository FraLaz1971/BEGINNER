1 CLS
2 PRINT "                                 PIG 2014"
4 PRINT " "
5 PRINT "Welcome to the game of PIG!"
6 RANDOMIZE TIMER
10 PRINT " "
15 PRINT "In this version of the classic dice game PIG, you and the computer will be"
16 PRINT "competing to be the first to score 100 or more points.  With each roll of"
17 PRINT "the dice, you will score the face value of the pips.  However, if you roll"
18 PRINT "a 7, you will lose all your points scored in the round and the computer will"
19 PRINT "get a turn.  If you roll something other than 7, you can choose to bank your"
20 PRINT "points.  If you do this, your points will be safe, but the computer will"
21 PRINT "get a turn.  Alternatively, you can keep rolling and try to score more points."
22 PRINT "Type END to quit the game prematurely.  Good luck, and remember: don't be a"
23 PRINT "PIG!"
45 PRINT ""
50 PRINT "You roll first!"
51 INPUT "Press enter to roll the dice.";DICEY$
52 IF DICEY$ = "END" THEN END
53 IF DICEY$ = "end" THEN END
55 DICEA = INT(RND*6 + 1)
60 DICEB = INT(RND*6 + 1)
61 PRINT "You roll a" DICEA "and a" DICEB
62 PROLL = DICEA + DICEB
63 PROLLCALL = PROLLCALL + PROLL
64 IF PROLL = 7 THEN PRINT "Sorry, you rolled a 7!  You lose" PROLLCALL - 7 "points this round, but you have" PBANK "points banked."
65 IF PROLL = 7 THEN INPUT "Press enter to continue.";NOTUSEDA$
66 IF PROLL = 7 THEN PROLLCALL = 0
67 IF PROLL = 7 THEN GOTO 95
68 PTOTAL = PROLLCALL + PBANK
69 IF PTOTAL >= 100 THEN GOTO 200
74 PRINT "You have rolled" PROLLCALL "points this round and have" PBANK "points already banked."
80 INPUT "Do you wish to roll again (Enter Y or N)";QUEST$
81 IF QUEST$ = "END" THEN END
82 IF QUEST$ = "end" THEN END
85 IF QUEST$ = "Y" THEN GOTO 55
86 IF QUEST$ = "y" THEN GOTO 55
90 IF QUEST$ = "N" THEN PBANK = PBANK + PROLLCALL
91 IF QUEST$ = "N" THEN PRINT "You have banked" PBANK "points in total."
92 IF QUEST$ = "n" THEN PBANK = PBANK + PROLLCALL
93 IF QUEST$ = "n" THEN PRINT "You have banked" PBANK "points in total."
94 IF QUEST$ = "N" THEN PROLLCALL = 0
95 IF QUEST$ = "n" THEN PROLLCALL = 0
96 PROLLCALL = 0
97 PRINT "Now it's the computer's turn to play!"
100 DICEC = INT(RND*6 + 1)
105 DICED = INT(RND*6 + 1)
109 PRINT "The computer rolls a" DICEC "and a" DICED
110 CROLL = DICEC + DICED
111 CROLLCALL = CROLLCALL + CROLL
112 IF CROLL = 7 THEN PRINT "The computer rolled a 7!  The computer loses" CROLLCALL- 7 "points.  The computer has" CBANK "points banked."
113 IF CROLL = 7 THEN CROLLCALL = 0
114 IF CROLL = 7 THEN GOTO 55
115 CTOTAL = CROLLCALL + CBANK
116 IF CTOTAL >= 100 THEN GOTO 210
120 PRINT "The computer now has" CROLLCALL "points this round, and" CBANK "points banked."
121 INPUT "Press ENTER to continue."; NOTUSED$
122 IF NOTUSED$ = "END" THEN END
123 IF NOTUSED$ = "end" THEN END
125 TOSSUP = RND
130 IF TOSSUP >= .5 THEN GOTO 100
131 IF TOSSUP < .5 THEN CBANK = CBANK + CROLLCALL
132 IF TOSSUP < .5 THEN PRINT "The computer has chosen to bank its" CROLLCALL "points."
133 IF TOSSUP < .5 THEN PRINT "The computer now has" CBANK "points banked."
134 IF TOSSUP < .5 THEN CROLLCALL = 0
135 IF TOSSUP < .5 THEN INPUT "Press ENTER to continue.";NOTUSEDB$
136 IF TOSSUP < .5 THEN GOTO 55
137 IF NOTUSEDB$ = "END" THEN END
138 IF NOTUSEDB$ = "end" THEN END
200 PRINT "Congratulations!  You have won the game with" PTOTAL "points.  The computer"
201 PRINT "had" CTOTAL "points."
205 END
210 PRINT "The computer has won the game with" CTOTAL "points.  You scored" PTOTAL "points."
211 PRINT "Better luck next time!"
220 END

