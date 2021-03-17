 100 REM This program computes the average, the geometric mean 
 104 REM and the quadratic mean of two numbers input by the user.
 108 CLS
 900 PRINT "********************************"
 910 PRINT "***  PROGRAM TO COMPUTE      ***"
 930 PRINT "***     THE AVERAGE          ***"
 940 PRINT "***  THE GEOMETRIC MEAN      ***"
 950 PRINT "***  & THE QUADRATIC MEAN    ***"
 960 PRINT "***  OF 2 INTEGER NUMBERS    ***"
 970 PRINT "********************************"
1010 REM set X and Y as input number values of which calculate the averages
1020 PRINT "PLEASE CHOOSE 2 NUMBERS"
1030 PRINT "ENTER NUMBER #"1; : INPUT X
1035 PRINT "ENTER NUMBER #"2; : INPUT Y
1040 PRINT "YOU SELECTED ";X; " AND ";Y
1050 LET A = (X + Y) / 2
1060 LET G = SQR(X * Y)
1065 LET Z = SQR((X^2 + Y^2)/2.0) 
2060 REM PRINT THE RESULTS
2070 PRINT "The average is "; A
2080 PRINT "The geometric mean is "; G
2090 PRINT "The quadratic mean is ";  Z
2100 RETURN
3000 REM SHOW THE COMPUTATIONS
3010 REM
3020 PRINT "X is ";X; " Y is ";Y 
3030 PRINT "AVERAGE(";X", ";y;") = ";"(";x;"+";Y;")/2"
3040 PRINT "X^2 is ";"X^2; " Y is "; Y; " Y^2 is "; Y^2
3050 PRINT "GEO_MEAN(";X", ";y;") SQR( (X*Y)/2.0"
3110 PRINT "X^2+Y^2 is "; X^2+Y^2; "and (X^2 + Y^2)/2 is "; (X^2 + Y^2)/2.0
3130 PRINT "SQR((X^2 + Y^2)/2) is "; SQR( (X^2 + Y^2)/2.0 )
3149 INPUT "PRESS ENTER TO CLOSE";H
3190 PRINT "Bye"
3200 END
