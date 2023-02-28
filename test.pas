PROGRAM Test(INPUT, OUTPUT);
USES DateIO;
VAR
  MO: Month;
BEGIN
  IF NOT EOLN
  THEN
    BEGIN
      ReadMonth(INPUT, MO);
      WriteMonth(OUTPUT, MO)
    END 
  ELSE
    WRITELN   
END.  
