PROGRAM Sum(INPUT, OUTPUT);
VAR
  S, D: INTEGER;
  
PROCEDURE ReadDigit(VAR F: TEXT; VAR D: INTEGER);
VAR
  Ch: CHAR;
BEGIN
  IF NOT EOLN
  THEN
    BEGIN
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
     END  
END;

BEGIN
  S := 0;
  D := 0;
  WHILE NOT EOLN AND (D <> -1)
  DO 
    BEGIN
      ReadDigit(INPUT, D);
      IF D <> -1
      THEN
        S := S + D 
    END;
  WRITELN(OUTPUT, S)  
END.                                                      
                                                                                            
