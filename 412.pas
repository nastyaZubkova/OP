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
  IF Lanterns < '3'
  THEN
    IF Lanterns > '0'
    THEN
      WRITELN('The British are coming by ', Lanterns, '. Translation: 1=land, 2=sea.')
    ELSE
      WRITELN('The North Church shows only ''', Lanterns, '''.')
  ELSE
    WRITELN('The North Church shows only ''', Lanterns, '''.')
END. {PaulRevere}


