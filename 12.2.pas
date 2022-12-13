PROGRAM LW12(INPUT, OUTPUT);
VAR
  Ch, State: CHAR;
BEGIN
  WHILE NOT EOLN(INPUT)
  DO
    BEGIN
      READ(Ch);
      IF Ch <> ' '
      THEN
        BEGIN
          IF State <> 'A'
          THEN
            WRITE(Ch);
          IF State = 'A'
          THEN
            WRITE(' ', Ch);  
          State := 'B'
        END; 
      IF (Ch = ' ') AND (State = 'B')
      THEN
        State := 'A';   
    END;
  WRITELN('#')  
END.
