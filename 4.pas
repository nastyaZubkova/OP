PROGRAM Lexico1(INPUT, OUTPUT);
VAR
  F1, F2: TEXT;
  Result: CHAR;
PROCEDURE Lexico(VAR F1, F2: TEXT; VAR Result: CHAR);
{Result 0, 1, 2 ���� ������������������ ������� F1 =, <, > ��� F2       
��������������. ����������� ���������, ��������������� F1 � F2,
������ ���� ����������}
VAR
  Ch1, Ch2: CHAR;
BEGIN {Lexico}
  RESET(F1);
  RESET(F2);
  Result := '0';
  WHILE (NOT EOLN(F1) AND NOT EOLN(F2)) AND (Result = '0')
  DO
    BEGIN
      READ(F1, Ch1);
      READ(F2, Ch2);
      IF (Ch1 < Ch2)
      THEN {Ch1 < Ch2 ��� F1 ������ F2}
        Result := '1'
      ELSE
        IF (Ch1 > Ch2)
        THEN {Ch1 > Ch2 ��� F2 ������ F1}
          Result := '2'
    END; {WHILE}
  IF NOT EOLN(F1) AND (Result = '0')
  THEN
    Result := '2';
  IF NOT EOLN(F2) AND (Result = '0')
  THEN
    Result := '1'     
END; {Lexico}
BEGIN {program}
  REWRITE(F1);
  REWRITE(F2);
  WRITELN(F1, 'hello');
  WRITELN(F2, 'HELLO');
  Lexico(F1, F2, Result);
  {WRITELN(OUTPUT, Result); }
  IF Result <> '0'
  THEN
    BEGIN
      IF Result = '1'
      THEN
        WRITELN('����� � ������ ����� ������')
      ELSE
        WRITELN('����� �� ������ ����� ������')  
    END
  ELSE
    WRITELN('����� � ������ �����')  
END. 
{���� ���������� �������� � ��������� ����, 2 ���������� �����, ����� ������ ��������, ���� �������� � ������ ��������} 
{��� ��, ���� ����� ���������� ���������, �� ���� �� ��� �������, ��������� ��������� �� �������} 
