
SCREEN 12
x = 21: y = 31 'start position
dx = 3: dy = 3 'number of pixel moves per loop
DO
    _LIMIT 100 ' set to 100 frames per second
    x = x + dx: y = y + dy
    IF x < 0 OR x > 640 THEN dx = -dx 'limit columns and reverse column direction each side
    IF y < 0 OR y > 480 THEN dy = -dy 'limit rows and reverse row direction top or bottom
    IF px <> x OR py <> y THEN FOR d = 1 TO 20: CIRCLE (px, py), d, 0: NEXT 'erase
    FOR c = 1 TO 20: CIRCLE (x, y), c, 6: NEXT 'draw new circle at new position
    px = x: py = y 'save older coordinates to erase older circle next loop
    _DISPLAY 'after new circle is set, show it
LOOP UNTIL INKEY$ = CHR$(27)

