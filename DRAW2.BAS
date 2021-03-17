10 ' How to Drawing a box in PC-Basic
20 ' and moving the box around
30 ' * other shape can be drawn
40 '
50 ' set start location
60 ' "BR" + STR$(U) = vertical location
70 ' " BU" + STR$(B) = horizontal location
80 U = -12:B = -12:' * Starting point
90 '
100 ' set start angle
110 ' "TA" + STR$(ANGLE)
120 ANGLE = 90:' * starting angle
130 '
140 SCREEN 1
150 '
160 A$ = INKEY$
170 '
180 ' This part is use to stop strobing
190 ' may not need or adjusted as need
200  CA=CA+1
210  IF CA>700 THEN CA=0:GOTO 250
220  GOTO 200
230 '
240 ' keyboard input
250 IF A$ = "a" THEN B = B + 5
260 IF A$ = "d" THEN B = B - 5
270 IF A$ = "w" THEN U = U + 5
280 IF A$ = "z" THEN U = U - 5
290 IF A$ = "1" THEN ANGLE=ANGLE+5
300 IF A$ = "2" THEN ANGLE=ANGLE-5
310 IF A$ = CHR$(27) THEN END
320 '
330 '
340 PLOT$ = " BR" + STR$(U) + " BU" + STR$(B) + " C1 R54 U45 L54 D45 BE20 P4,1"
350 ' as view TA90 BR-12 BU-12 C1 R54 U45 L54 D45 BE20 P4,1
360 '
370 ' * List of line commands used in this box
380 ' TA## Angle in degrees
390 ' BR## Vertical location
400 ' BU##
410 ' C1
420 ' R## Move right
430 ' U## Move up
440 ' L## Move left
450 ' D## Move down
460 ' BE20
470 ' P#,1 = Changes fill color
480 '
490 CLS
500 '
510 ' Rotate the cube "Angle" degrees:
520 DRAW "TA" + STR$(ANGLE) + PLOT$
530 '
540 '
550 GOTO 160
560 '
570 '
580 ' other line commands.
590 ' E## move diagonal up right
600 ' F## move diagonal down right
610 ' G## move diagonal down left
620 ' H## move diagonal up left
630 ' M ##,## move
640 ' B move but does not plot
650 ' B is used this way BR## move to right
660 ' * BR-## moves left also BU## or BU-## moves horizontal
670 ' N move to original position
680 ' color chart:
690 ' 0 - black
700 '. 1 - dark blue
710 '. 2 - dark green
720 '. 4 - dark red
730 '. 5 - dark purple
740 '. 6 - orange brown
750 '. 7 - grey
760 '. 8 - dark grey
770 '. 9 - light blue
780 ' 10 - light green
790 ' 11 - light cyan
800 ' 12 - light red
810 ' 13 - magenta
820 ' 14 - yellow
830 ' 15 - bright white
840 ' other colors using screen 13
