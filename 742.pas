PROGRAM BubbleSort(INPUT, OUTPUT);
{��������� ������ ������ INPUT � OUTPUT}
VAR
  Sorted, Ch, Ch1, Ch2: CHAR;
  F1, F2: TEXT;
BEGIN {BubbleSort}
  { �������� INPUT � F1 }
  REWRITE(F1);
  WHILE NOT EOF
  DO
    BEGIN
      READ(INPUT, Ch);
      WRITE(F1, Ch);
      IF EOLN
      THEN
        WRITELN(F1)
    END;
  Sorted := 'N';
  WHILE Sorted = 'N'
  DO              
    BEGIN
      { �������� F1 � F2,�������� �����������������
       � ����������� ������ �������� ������� �� �������}
      Sorted := 'Y';
      RESET(F1);
      REWRITE(F2);
      WHILE NOT EOF(F1)
      DO
        BEGIN
          IF NOT EOLN(F1)
          THEN
            BEGIN
              READ(F1, Ch1);
              WHILE NOT EOLN(F1)
              DO { �� ������� ���� ��� ������� �������� ��� Ch1,Ch2 }
                BEGIN
                  READ(F1, Ch2);
              { �������   min(Ch1,Ch2) �  F2, ���������
               ��������������� ������� }
                  IF Ch1 <= Ch2
                  THEN
                    BEGIN
                      WRITE(F2, Ch1);
                      Ch1 := Ch2
                    END
                  ELSE
                    BEGIN
                      WRITE(F2, Ch2);
                      Sorted := 'N'
                    END
                END;
              WRITELN(F2, Ch1); { ������� ��������� ������ � F2 }
              READLN(F1)
            END
        END;
  { �������� F2 � F1 }
        RESET(F2);
        REWRITE(F1);
        WHILE NOT EOF(F2)
        DO
          BEGIN
            IF NOT EOLN(F2)
            THEN
            BEGIN
              READ(F2, Ch);
              WRITE(F1, Ch);
            END
            ELSE
              BEGIN
                WRITELN(F1);
                READLN(F2)
              END 
          END
    END; 
  { �������� F1 � OUTPUT }
  RESET(F1);
  WHILE NOT EOF(F1)
  DO
    BEGIN
      IF NOT EOLN(F1)
      THEN
        BEGIN
          READ(F1, Ch);
          IF Ch <> ' '
          THEN
            WRITE(OUTPUT, Ch)
        END
      ELSE
        BEGIN
          WRITELN(OUTPUT);
          READLN(F1)
        END 
    END
END. {BubbleSort}
