PROGRAM Test2(INPUT, OUTPUT);

PROCEDURE Reverse(VAR Infile, Outfile: TEXT);
VAR                               
  Ch: CHAR;
BEGIN{Reverse} 
  IF NOT EOLN(Infile)
  THEN
    BEGIN
      READ(Infile, Ch);
      Reverse(Infile, Outfile);
      WRITE(Outfile, Ch)
    END 
END; {Reverse} 

BEGIN {Test2}
  Reverse(INPUT, OUTPUT);
  WRITELN
END. {Test2}
