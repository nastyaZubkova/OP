PROGRAM Split1(INPUT,OUTPUT);
  {Копирует INPUT в OUTPUT,сначала нечетные,а затем четные
   элементы}
VAR
  Ch,Next: CHAR;
  Odds,Evens: TEXT; 
{PROCEDURE CopyOut(VAR F1: TEXT; VAR Ch: CHAR);}
PROCEDURE CopyOut(VAR F1: TEXT; VAR Ch: CHAR);
BEGIN
  {Копируем F1 в OUTPUT}
  WHILE NOT EOLN(F1)
  DO
    BEGIN
      READ(F1, Ch);
      WRITE(OUTPUT, Ch)
    END
END;


BEGIN
  REWRITE(Odds);
  REWRITE(Evens);
  WRITE(Odds, '1234');
  WRITE(Evens, '5678');
  {Разделяет INPUT в Odds и Evens}
  RESET(Odds);
  RESET(Evens);
  CopyOut(Odds,Ch);
  CopyOut(Evens,Ch);
  WRITELN
END.


