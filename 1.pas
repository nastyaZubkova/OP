PROGRAM RunBubbleSort1(INPUT, OUTPUT);
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
BEGIN { BubbleSort }
  { �������� INPUT � F1 }
  REWRITE(F1);
  CopyFile(INPUT, F1);
  Sorted := 'N';
  WHILE Sorted = 'N'
  DO
    BEGIN
      Sorted := 'F'
      { �������� F1 � F2,�������� �����������������
       � ����������� ������ �������� ������� �� �������}
      { �������� F2 � F1 }
    END;
 { �������� F1 � OUTPUT }
  RESET(F1);
  CopyFile(F1, OUTPUT)
END.{ BubbleSort }

