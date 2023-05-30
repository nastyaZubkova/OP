UNIT Eyuipment;
  
INTERFACE  
  
PROCEDURE EyuipmentPr(VAR Str: STRING; VAR InFile: TEXT; VAR Schet: INTEGER);
  
IMPLEMENTATION

USES
  Exchange, Sort;
  
PROCEDURE EyuipmentPr(VAR Str: STRING; VAR InFile: TEXT; VAR Schet: INTEGER);
CONST
  Alp = ['a' .. 'z']; 
  AlpR = ['à' .. 'ÿ'];  
VAR
  Ch: CHAR;  
BEGIN
  READ(InFile, Ch);
  IF Ch <> '-'
  THEN
    CaseChange(Ch);
  IF (Ch IN Alp) OR (Ch IN AlpR) OR (Ch = '-')
  THEN
    Str := Str + Ch
  ELSE  
    BEGIN 
      IF (Str <> '') AND (Str <> '-')
      THEN
        BEGIN
          Insert(Str);  
          Schet := Schet + 1
        END;         
      Str := ''
    END;
    IF (EOLN(InFile)) AND (Str <> '')
    THEN
      BEGIN
        Insert(Str);  
        Schet := Schet + 1
      END        
END;   
