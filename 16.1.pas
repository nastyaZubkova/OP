PROGRAM SortMonth(INPUT, OUTPUT);
USES DateIO;
VAR
  M1, M2: Month;
BEGIN
  IF NOT EOLN
  THEN
    BEGIN
      ReadMonth(INPUT, M1);
      IF NOT EOLN
      THEN
        ReadMonth(INPUT, M2)
    END;          
  IF (M1 = NoMonth) OR (M2 = NoMonth)
  THEN
    WRITELN('������� ������ �������� �������')
  ELSE
    BEGIN
      IF M1 = M2
      THEN
        BEGIN
          WRITE('��� ������ ');
          WriteMonth(OUTPUT, M1)
        END
      ELSE
        BEGIN
          IF M1 < M2
          THEN
            BEGIN
              WriteMonth(OUTPUT, M1);
              WRITE(' ������������ ');
              WriteMonth(OUTPUT, M2)
            END
          ELSE
            BEGIN
              WriteMonth(OUTPUT, M1);
              WRITE(' ������� �� ');
              WriteMonth(OUTPUT, M2)
            END  
        END;
      WRITELN      
    END  
END.  
