PROGRAM CountWords1(INPUT, OUTPUT);     {не добавила вывод в файл, не обрабатывает русские буквы, а так готово}

USES Exchange;
USES TreeSort;

VAR
  Ch: CHAR;
  Str: STRING;
  Alp: SET OF 'a' .. 'z';
  Root: Tree;
  InFile: TEXT;
  Schet: INTEGER;
  
BEGIN {CountWords1}
  ASSIGN(InFile, 'InFile.txt');
  Alp := ['a' .. 'z']; 
  Str := '';  
  Root := NIL; 
  RESET(InFile);
  Schet := 0;
  WHILE NOT EOF(InFile)
  DO
    BEGIN
      WHILE NOT EOLN(InFile)
      DO
        BEGIN  
          READ(InFile, Ch);
          CaseChange(Ch);
          IF (Ch IN Alp) OR (Ch = 'M')
          THEN
            Str := Str + Ch
          ELSE
            BEGIN 
              IF Str <> ''
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
  PrintTree(Root);
  WRITELN('¬сего слов: ', Schet)
END. {CountWords1} 
