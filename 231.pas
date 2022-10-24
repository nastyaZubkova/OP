PROGRAM Less(INPUT, OUTPUT);
VAR 
  Ch: CHAR;
BEGIN
  READ(Ch);
  WRITE('WRITE THE PHRASE IN WHICH YOU WANT TO REMOVE THE SPACES. RESULT: ');
  WHILE Ch <> '#'
  DO
    BEGIN
      IF Ch <> ' '
      THEN
        WRITE(Ch);
      READ(Ch)
    END; 
  WRITELN
END.
