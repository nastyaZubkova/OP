PROGRAM Test1(INPUT, OUTPUT);
USES Count3;
VAR
  Ch, Ch1, Ch2, Ch3, StringEmpty: CHAR;
BEGIN{Test1}
  IF EOLN
  THEN
    StringEmpty := 'Y'
  ELSE
    StringEmpty := 'N';
  Start;
  Value(Ch1, Ch2, Ch3);
  WRITELN(Ch1, Ch2, Ch3, ' TEST Start');
  WHILE (NOT EOLN) AND (StringEmpty = 'N') 
  DO 
    BEGIN
      READ(Ch);
      Bump;
      Value(Ch1, Ch2, Ch3);
      IF Ch1 = '9'
      THEN
        IF Ch2 = '9'
        THEN
          IF Ch3 = '9'
          THEN
            StringEmpty := 'O'
    END;
  IF StringEmpty = 'O'
  THEN
    IF NOT EOLN
    THEN
      WRITELN('счётчик переполнен')         
  ELSE     
    WRITELN(Ch1, Ch2, Ch3, ' TEST Bump');
  IF StringEmpty = 'Y' 
  THEN
    WRITELN('счётчик пуст');
END.{Test1}
 
