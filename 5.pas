PROGRAM Split1(INPUT,OUTPUT);
  {�������� INPUT � OUTPUT,������� ��������,� ����� ������
   ��������}
VAR
  Ch,Next: CHAR;
  Odds,Evens: TEXT; 
{PROCEDURE CopyOut(VAR F1: TEXT; VAR Ch: CHAR);}
PROCEDURE CopyOut(VAR F1: TEXT; VAR Ch: CHAR);
BEGIN
  {�������� F1 � OUTPUT}
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
  {��������� INPUT � Odds � Evens}
  RESET(Odds);
  RESET(Evens);
  CopyOut(Odds,Ch);
  CopyOut(Evens,Ch);
  WRITELN
END.


