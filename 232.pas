PROGRAM CopyOdds(INPUT, OUTPUT);
{�������� ����� ���� ������� �� INPUT � OUTPUT,
�� �� ��� ���, ���� �� ���������� ������ #.}
VAR
  Ch, Next: CHAR;
  {Next - ��� ������������� ����� ��������� (odd (O)) 
  � ������� (even (E)}
BEGIN
  Next := 'O'; {odd}
  READ(Ch);
  WHILE Ch <> '#'
  DO
    BEGIN
      IF Next = 'O'
      THEN  {����������� �������� ��������}
        WRITE(Ch);
      READ(Ch);
      {������������ �������� Next}
      IF Next = 'O'
      THEN
        Next := 'E'  {even}
      ELSE
        Next := 'O'  {odd}
    END;
  WRITELN
END.
  