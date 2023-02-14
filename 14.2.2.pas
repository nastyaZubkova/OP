PROGRAM Test(INPUT, OUTPUT);

PROCEDURE RCopy(VAR Infile, Outfile: TEXT);
VAR
  Ch: CHAR;
BEGIN{RCopy}
  IF NOT EOLN(Infile)
  THEN
    BEGIN
      READ(Infile, Ch);
      WRITE(Outfile, Ch);
      RCopy(Infile, Outfile)
    END
END;{RCopy}

BEGIN{Test} 
  RCopy(INPUT, OUTPUT);
  WRITELN(OUTPUT)
END.{Test} 
