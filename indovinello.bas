80  cls
90  print "	*******************"
100 print "	*** indovinello ***"
110 print "	*******************
120 print:input "vuoi le istruzioni? (SI/NO)";z$ : if z$ = "NO" or z$ = "no" goto 400
125 if z$ = "SI" or z$ = "si" goto 130
127 goto 120
130 print "prova ad indovinare una parola misteriosa formata da 5 lettere"
140 print "solo parole di 5 lettere sono accettate"
150 print "anche nomi ..."
160 print "ti sara' detto quali lettere hai indovinato"
180 print "(lettera giusta nella posizione giusta)"
200 print "per esempio se indovini due lettere "
210 print "hai una idea di quelle che sono"
220 print "le lettere mancanti ..."
400 let n% = 50
410 dim n$(n%) , z(5) , y(5)
420 for j=1 to n%: read n$(j): next j
450 n1=VAL(MID$(TIME$, 7, 2)): randomize n1
460 let r = int(rnd*n%+1)
500 g=0: na$=n$(r)
510 print "ho pensato una parola composta da 5 lettere:"
520 print "prova ad indovinarla e ti diro'"
530 print "quante lettere hai indovinato."
540 print:print
545 rem z$ will contain the word attempted by the player
560 g=g+1: input "immetti la tua parola";z$
570 if len(z$) <> 5 then print "devi indovinare solo parole di 5 lettere":goto 560
575 print "well, you attempted ";z$
580 v=0:h=0:m=0
590 for j=1 to 5
598     rem extract the letters from the z$ variable entered by the player
600     z = asc(mid$(z$,j,1)): y = asc(mid$(na$,j,1))
602     if z=y or z+32=y or z=y+32 or z+32 = y+32 then m=m+1
605     rem the variable v is containing the number of vocals
607     rem the variable m is containing the number of well guessed letters 
610     if z=65 or z=69 or z=73 or z=79 or z=85 or z=89 or z=65+32 or z=69+32 or z=73+32 or z=79+32 or z=85+32 or z=89+32 then v=v+1
640     z(j)=z : y(j)=y 
645 next j
650 if m=5 goto 800
655 rem if the player choose a word with 0 or 5 vocals, make the user retry
660 if v=0 or v=5 then print "suvvia ... che tipo di parola e' questa?":goto 560
710 print "hai indovinato ";m;"lettere"
720 if g<30 goto 560
730 print "e' meglio che ti dica ... ";
735 print "o diventerai vecchio davanti al computer!":print "la parola era '";
740 for j=1 to 5: print chr$(y(j)); : next j
750 print "'": goto 810
800 print "indovinato!! con sole ";g;" prove"
810 input "un altra parola (SI/NO)";z$
820 if z$ = "SI" or z$ = "si" or z$ = "Si" then cls: goto 450
830 if z$ = "NO" or z$ = "no" or z$ = "No" then  goto 850
840 print "please answer 'si' or 'no' "
850 print "Goodbye."
999 END
1250 data MARCH,REIGN,SHORT,GHOST,GRASS
1260 data SOUND,BLAST,QUOTA,IVORY,CREED
1270 data EQUAL,BENCH,SWEET,FAULT,TRUTH
1280 data POUND,STRAW,STEAK,DOUBT,RATIO
1290 data STUFF,PROVE,BRICK,DRAFT,PRESS
1300 data COAST,ALIVE,BROWN,SHAFT,GRIND
1310 data SIEGE,DEBUT,SCENE,BREED,ONION
1320 data CHEEK,DELAY,TRACE,FLEET,AMPLE
1330 data GRIEF,PROUD,MAJOR,LEARN,PIANO
1340 data DRIVE,MORAL,SPITE,SHOCK,SENSE
