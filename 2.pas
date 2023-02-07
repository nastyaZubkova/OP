PROGRAM RunBubbleSort2(INPUT, OUTPUT);
 { ��������� ������ ������ INPUT � OUTPUT }
VAR
  Sorted: CHAR;
  F1, F2: TEXT;
PROCEDURE CopyFile(VAR InFile, OutFile: TEXT);
VAR
  Ch: CHAR;
BEGIN
  WHILE NOT EOLN(InFile)
  DO
    BEGIN
      READ(InFile, Ch);
      WRITE(OutFile, Ch)
    END;
  WRITELN(OutFile)
END;
PROCEDURE CopyAndSwap(VAR F1, F2: TEXT; VAR Sorted: CHAR);
VAR 
  Ch1, Ch2: CHAR;
BEGIN
  Sorted := 'Y';
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
        WRITELN(F2, Ch1) { ������� ��������� ������ � F2 }
      END
END;  
BEGIN { BubbleSort }
  { �������� INPUT � F1 }
  REWRITE(F1);
  CopyFile(INPUT, F1);
  Sorted := 'N';
  WHILE Sorted = 'N'
  DO
    BEGIN
      RESET(F1);
      REWRITE(F2);
      CopyAndSwap(F1, F2, Sorted);
      { �������� F2 � F1 }
      RESET(F2);
      REWRITE(F1);      
      CopyFile(F2, F1)  
    END;
 { �������� F1 � OUTPUT }
  RESET(F1);
  CopyFile(F1, OUTPUT)
END.{ BubbleSort }

