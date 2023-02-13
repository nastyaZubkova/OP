PROGRAM Split1(INPUT,OUTPUT);
  {Êîïèðóåò INPUT â OUTPUT,ñíà÷àëà íå÷åòíûå,à çàòåì ÷åòíûå
   ýëåìåíòû}
VAR
  Ch,Next: CHAR;
  Odds,Evens: TEXT; 
{PROCEDURE CopyOut(VAR F1: TEXT; VAR Ch: CHAR);}
PROCEDURE CopyOut(VAR F1: TEXT; VAR Ch: CHAR);
BEGIN
  {Êîïèðóåì F1 â OUTPUT}
  WHILE NOT EOF(F1)
  DO
    BEGIN
      WHILE NOT EOLN(F1)
      DO
        BEGIN
          READ(F1, Ch);
          WRITE(OUTPUT, Ch)
        END;
      READLN(F1) 
    END
END;
BEGIN
  REWRITE(Odds);
  REWRITE(Evens);
  WRITE(Odds, '1234');
  WRITE(Evens, '5678');
  {Ðàçäåëÿåò INPUT â Odds è Evens}
  RESET(Odds);
  RESET(Evens);
  CopyOut(Odds,Ch);
  CopyOut(Evens,Ch);
  WRITELN
END.
