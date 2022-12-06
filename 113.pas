PROGRAM MinusLastChar(INPUT, OUTPUT);
VAR
  Ch1: CHAR;
  F1, F2: TEXT;
BEGIN
  REWRITE(F1);
  WHILE NOT EOLN
  DO
    BEGIN
      READ(Ch1);
      IF EOLN
      THEN                                  
        WRITE(Ch1);
      IF NOT EOLN
      THEN                                  
        WRITE(F1, Ch1);           
    END;
    RESET(F1);
    REWRITE(F2);
    WHILE NOT EOLN(F1)
    DO
    BEGIN
      READ(Ch1);
      IF EOLN
      THEN                                  
        WRITE(OUTPUT, Ch1);
      IF NOT EOLN
      THEN                                  
        WRITE(F2, Ch1);           
    END;
    RESET(F2);
    REWRITE(F1);
    WHILE NOT EOLN(F2)
    DO
    BEGIN
      READ(Ch1);
      IF EOLN
      THEN                                  
        WRITE(OUTPUT, Ch1);
      IF NOT EOLN
      THEN                                  
        WRITE(F1, Ch1);           
    END;    
    RESET(F1);
    WHILE NOT EOLN(F1)
    DO
    BEGIN
      READ(Ch1);
      IF EOLN
      THEN                                  
        WRITE(OUTPUT, Ch1);
      IF NOT EOLN
      THEN                                  
        WRITE(OUTPUT, Ch1);           
    END;    
  WRITELN    
END.      
