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
  IF Lanterns = 'T'
  THEN
    BEGIN
      READ(Lanterns);
      IF Lanterns = 'T'
      THEN
        WRITELN('The British are coming by sea.')
      ELSE
        WRITELN('The British are coming by land.')
    END
  ELSE
    WRITELN('The North Church shows only ''', Lanterns, '''.')
END. {PaulRevere}                               
