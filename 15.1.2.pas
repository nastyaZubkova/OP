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
  WHILE NOT EOLN
  DO 
    BEGIN
      IF Ch1 = '9'
      THEN
        IF Ch2 = '9'
        THEN
          IF Ch3 = '9'
          THEN
            StringEmpty := 'O';
      READ(Ch);
      Bump;
      Value(Ch1, Ch2, Ch3)
    END;
  IF StringEmpty = 'N' 
  THEN   
      WRITELN(Ch1, Ch2, Ch3, ' TEST Bump');
  IF StringEmpty = 'Y' 
  THEN
    WRITELN('счётчик пуст');
  IF StringEmpty = 'O' 
  THEN
    WRITELN('счётчик переполнен')         
END.{Test1}
 
