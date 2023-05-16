PROGRAM CountWords1(INPUT, OUTPUT);     {не добавила вывод в файл, не обрабатывает русские буквы, а так готово}

USES Exchange;
USES TreeSort;

VAR
  Ch: CHAR;
  Str: STRING;
  AlpE1: SET OF 'a' .. 'z';
  AlpE2: SET OF 'A' .. 'Z';
  AlpR1: SET OF 'а' .. 'я';
  AlpR2: SET OF 'А' .. 'Я';
  Root: Tree;
  InFile: TEXT;
  Schet: INTEGER;
  
BEGIN {CountWords1}
  ASSIGN(InFile, 'InFile.txt');
  AlpE1 := ['a' .. 'z'];
  AlpE2 := ['A' .. 'Z']; 
  AlpR1 := ['а' .. 'я'];
  AlpR2 := ['А' .. 'Я'];
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
          IF (Ch IN AlpE1) OR (Ch IN AlpE2) OR (Ch IN AlpR1) OR (Ch IN AlpR1)
          THEN
            BEGIN
              CaseChange(Ch);
              Str := Str + Ch
            END  
          ELSE
            IF Ch = '-'
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
  WRITELN('Всего слов: ', Schet)
END. {CountWords1} 
