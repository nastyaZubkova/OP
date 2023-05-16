PROGRAM CountWords1(INPUT, OUTPUT);     {не добавила вывод в файл, а так готово}

USES Exchange;
USES TreeSort;

CONST
  Alp = ['a' .. 'z']; 
  AlpR = ['а' .. 'я'];
  
VAR
  Ch: CHAR;
  Str: STRING;
  Root: Tree;
  InFile, OutFile: TEXT;
  Schet: INTEGER;
  
BEGIN {CountWords1}
  ASSIGN(InFile, 'Philosophy.txt');
  ASSIGN(OutFile, 'OutFile.txt');
  RESET(InFile);
  REWRITE(OutFile);
  Str := '';  
  Root := NIL; 
  Schet := 0;
  WHILE NOT EOF(InFile)
  DO
    BEGIN
      WHILE NOT EOLN(InFile)
      DO
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
                  Insert(Root, Str);  
                  Schet := Schet + 1
                END;         
              Str := ''
            END;
          IF (EOLN(InFile)) AND (Str <> '')
          THEN
            BEGIN
              Insert(Root, Str);  
              Schet := Schet + 1
            END        
        END;  
      READLN(InFile);
      Str := ''
    END;
  PrintTree(Root, OutFile);
  WRITELN(OutFile, 'Всего слов: ', Schet)
END. {CountWords1} 
