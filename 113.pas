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
      WRITE(F1, Ch1)
    END;
  RESET(F1);
  WHILE NOT EOLN(F1)
  DO
    BEGIN
      REWRITE(F2);
      WHILE NOT EOLN(F1)
      DO
        BEGIN
          READ(F1, Ch1);                                 
          IF NOT EOLN(F1)
          THEN                                  
            WRITE(F2, Ch1)          
        END;
      WRITE(OUTPUT, Ch1);
      RESET(F2);
      REWRITE(F1);
      IF NOT EOLN(F2)
      THEN
        BEGIN
          WHILE NOT EOLN(F2)
          DO
            BEGIN
              READ(F2, Ch1);                                 
              IF NOT EOLN(F2)
              THEN                                  
                WRITE(F1, Ch1)           
            END;
          WRITE(OUTPUT, Ch1);
          RESET(F1)
        END
    END;    
  WRITELN      
END.
