SCREEN 13
DIM a(3976) AS INTEGER, b(3976) AS INTEGER, c(3976) AS INTEGER
DIM d(3976) AS INTEGER, e(3976) AS INTEGER
col% = 16: col1% = 16: col2% = 16: col3% = 16: col4% = 16
col5% = 16: col6% = 16: col7% = 16: flag = 1: flag1 = 1
flag2 = 1: flag3 = 1: flag4 = 1: flag5 = 1: flag6 = 1: flag7 = 1
DO
    GET (1, 38)-(318, 62), a()
    PUT (2, 38), a(), PSET
    LINE (1, 38)-(1, 62), col%
    IF flag = 1 THEN col% = col% + 1: IF col% = 32 THEN flag = 2
    IF flag = 2 THEN col% = col% - 1: IF col% = 16 THEN flag = 1
    GET (2, 63)-(319, 87), b()
    PUT (1, 63), b(), PSET
    LINE (319, 63)-(319, 87), col1%
    IF flag1 = 1 THEN col1% = col1% + 1: IF col1% = 32 THEN flag1 = 2
    IF flag1 = 2 THEN col1% = col1% - 1: IF col1% = 16 THEN flag1 = 1
    GET (1, 88)-(318, 112), c()
    PUT (2, 88), c(), PSET
    LINE (1, 88)-(1, 112), col2%
    IF flag2 = 1 THEN col2% = col2% + 1: IF col2% = 32 THEN flag2 = 2
    IF flag2 = 2 THEN col2% = col2% - 1: IF col2% = 16 THEN flag2 = 1
    GET (2, 113)-(319, 137), d()
    PUT (1, 113), d(), PSET
    LINE (319, 113)-(319, 137), col3%
    IF flag3 = 1 THEN col3% = col3% + 1: IF col3% = 32 THEN flag3 = 2
    IF flag3 = 2 THEN col3% = col3% - 1: IF col3% = 16 THEN flag3 = 1
    GET (1, 138)-(318, 162), e()
    PUT (2, 138), e(), PSET
    LINE (1, 138)-(1, 162), col4%
    IF flag4 = 1 THEN col4% = col4% + 1: IF col4% = 32 THEN flag4 = 2
    IF flag4 = 2 THEN col4% = col4% - 1: IF col4% = 16 THEN flag4 = 1
LOOP UNTIL LEN(INKEY$)

