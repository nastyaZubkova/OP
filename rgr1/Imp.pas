UNIT Imp;
  
INTERFACE  
  
PROCEDURE ImplementationCountWords;
  
IMPLEMENTATION

USES
  Eyuipment, Sort;

PROCEDURE ImplementationCountWords;
VAR
  Str: STRING;
  InFile, OutFile: TEXT;
  Schet: INTEGER;
  
BEGIN {CountWords1}
  ASSIGN(InFile, 'Philosophy.txt');
  ASSIGN(OutFile, 'OutFile.txt');
  RESET(InFile);
  REWRITE(OutFile);
  Str := '';   
  Schet := 0;
  WHILE NOT EOF(InFile)
  DO
    BEGIN
      WHILE NOT EOLN(InFile)
      DO
        EyuipmentPr(Str, InFile, Schet);     
      READLN(InFile);
      Str := ''
    END;
  PrintTree(OutFile);
  WRITELN(OutFile, 'Всего слов: ', Schet)
END; {CountWords1} 

BEGIN
END.
