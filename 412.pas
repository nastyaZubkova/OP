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


