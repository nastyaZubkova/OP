PROGRAM PaulRevere(INPUT, OUTPUT);
{������ ���������������� ���������, ���������� �� ��������
 �� �����:  '...by land' ��� 1 � '...by sea' ��� 2
 ����� ������ ��������� �� ������}
VAR
  Lanterns: CHAR;
BEGIN {PaulRevere}
  {Read Lanterns}
  READ(Lanterns);
  {Issue Paul Revere's message}
  IF Lanterns = '1'
  THEN
    Lanterns := 'land'
  ELSE
    IF Lanterns = '2'
    THEN
      Lanterns := 'sea'
    ELSE
      WRITELN('The North Church shows only ''', Lanterns, '''.');
  READ(Laterns);
  WRITELN('The British are coming by ', Lanterns, '.')
END. {PaulRevere}

