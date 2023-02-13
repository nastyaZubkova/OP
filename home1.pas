PROGRAM Test1(INPUT, OUTPUT);
VAR 
  F:TEXT; 
PROCEDURE RecursiveSort(VAR F:TEXT);
VAR              
  F1, F2:TEXT;
  Ch:CHAR;
BEGIN{RecursiveSort}
  RESET(F);
  IF NOT EOLN(F)
  THEN
    BEGIN
      READ(F, Ch);
      IF NOT EOLN(F)
      THEN
        BEGIN
          Split(F, F1, F2);
          RecursiveSort(F1);
          RecursiveSort(F2);
          Merge(F, F1, F2);
        END
    END
END;{RecursiveSort}
PROCEDURE Split(VAR F, F1, F2:TEXT);
VAR
  Ch,Next: CHAR;
BEGIN {Split}
  RESET(F);
  REWRITE(F1);
  REWRITE(F2);
  Next := 'O';
  WHILE NOT EOLN(F)
  DO
    BEGIN 
      READ(F, Ch);
      IF Next = 'O'
      THEN
        BEGIN 
          WRITE(F1, Ch);
          Next := 'E'
        END
      ELSE
        BEGIN
          WRITE(F2, Ch); 
          Next := 'O'
        END
    END; 
  WRITELN(F1);
  WRITELN(F2)
END; {Split}
PROCEDURE Merge(VAR F, F1, F2:TEXT)
VAR
  Ch, Ch1, Ch2:CHAR;
BEGIN
  RESET(F1);
  RESET(F2);
  REWRITE(F);
  READ(F1, Ch1);
  READ(F2, Ch2);
  WHILE (NOT EOLN(F1)) AND (NOT EOLN(F2)
  DO
    BEGIN
      IF Ch1 <= Ch2
      THEN
        BEGIN
          WRITE(F, Ch1);
          READ(F1, Ch1)
        END
      ELSE
        BEGIN
          WRITE(F, Ch2);
          READ(F2, Ch2)
        END
    END;
  WRITE(F, Ch1);
  WHILE NOT EOLN(F1)
  DO
    BEGIN
      READ(F1, Ch1);
      WRITE(F1, Ch1)
    END; 
  WRITE(F, Ch2);
  WHILE NOT EOLN(F2)
  DO
    BEGIN
      READ(F2, Ch2);
      WRITE(F2, Ch)
    END;   
BEGIN {Test1}
  REWRITE(F);
  WRITELN(F, '987654321');
  RecursiveSort(F)
END. {Test1}   

