PROGRAM PaulRevere(INPUT, OUTPUT);
{Печать соответствующего сообщения, зависящего от величины
 на входе:  '...by land' для 1 и '...by sea' для 2
 иначе печать сообщения об ошибке}
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

