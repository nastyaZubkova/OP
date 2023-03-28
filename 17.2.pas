PROGRAM Test(INPUT, OUTPUT);
VAR 
  N: INTEGER;

PROCEDURE ReadNumber(VAR F: TEXT; VAR N: INTEGER);
VAR 
  D: INTEGER;

PROCEDURE ReadDigit(VAR F: TEXT; VAR D: INTEGER);
VAR
  Ch: CHAR;
BEGIN
  IF NOT EOLN
  THEN
    BEGIN {ReadDigit}
      READ(F, Ch);
      IF Ch = '0' THEN D := 0 ELSE 
      IF Ch = '1' THEN D := 1 ELSE
      IF Ch = '2' THEN D := 2 ELSE
      IF Ch = '3' THEN D := 3 ELSE
      IF Ch = '4' THEN D := 4 ELSE
      IF Ch = '5' THEN D := 5 ELSE
      IF Ch = '6' THEN D := 6 ELSE
      IF Ch = '7' THEN D := 7 ELSE
      IF Ch = '8' THEN D := 8 ELSE
      IF Ch = '9' THEN D := 9 ELSE 
         D := -1
     END {ReadDigit} 
END;

BEGIN {ReadNumber}
  N := 0;
  D := 0;
  IF EOLN
  THEN
    D := -1;
  WHILE NOT EOLN AND (D >= 0)  
  DO 
    BEGIN
      ReadDigit(F, D);
      WRITELN(N, ' ', D);
      
      IF (D >= 0)
      THEN        
        IF (MAXINT DIV 10 > N) OR ((MAXINT DIV 10 = N) AND (MAXINT MOD 10 >= D))
        THEN       
          N := N * 10 + D
        ELSE
          D := -2
    END;
  IF D < 0 
  THEN
    N := D
END;{ReadNumber}

BEGIN {Test}
  WRITELN(MAXINT);  
  ReadNumber(INPUT, N);
  WRITELN(OUTPUT, N)
END. {Test}
