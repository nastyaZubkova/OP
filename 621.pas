PROGRAM Split(INPUT, OUTPUT);
VAR
  Ch, Next: CHAR;
  Odds, Evens: TEXT;
BEGIN
  REWRITE(Odss);
  REWRITE(Evens);
  Next := '0';
  READ(INPUT, Ch);
  WHELE Ch <> '#'
  DO
    BEGIN
      WRITELN(Odss, '#');
      WRITELN(Evens, '#')
    END;  
  READ(Odss, Ch);
  READ(Evens, Ch)
END.
