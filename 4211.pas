PROGRAM SarahRevere (INPUT, OUTPUT); {������ ��������� � ��� ��� ���� ��������, � ����������� �� ����, ������ �� ����� ����������� 'land' ��� 'sea'.}
VAR
  W1, W2, W3, W4, Looking: CHAR;
BEGIN {SarahRevere}
  {������������� W1,W2,W3,W4,Looking}
  W1 := ' ';
  W2 := ' ';
  W3 := ' ';
  W4 := ' ';
  Looking := 'Y';
  WHILE Looking = 'Y'
  DO
    BEGIN
    {������� ����, ��������� ����� �����}
      W1 := W2;
      W2 := W3;
      W3 := W4;
      READ(W4);
      IF W4 = '#'
      THEN {����� ������}
        Looking := 'N';
      WRITELN(W1, W2, W3, W4)
     

      {�������� ���� ���  'land'}
      {�������� ���� ��� 'sea'}
    END;

  {������� ��������� Sarah}
END. {Sarah revere}

