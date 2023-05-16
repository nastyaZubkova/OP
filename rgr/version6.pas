PROGRAM CountWords1(INPUT, OUTPUT);     {�� �������� ����� � ����, �� ������������ ������� �����, � ��� ������}

USES Exchange;
USES TreeSort;

VAR
  Ch: CHAR;
  Str: STRING;
  AlpE1: SET OF 'a' .. 'z';
  AlpE2: SET OF 'A' .. 'Z';
  AlpR1: SET OF '�' .. '�';
  AlpR2: SET OF '�' .. '�';
  Root: Tree;
  InFile: TEXT;
  Schet: INTEGER;
  
BEGIN {CountWords1}
  ASSIGN(InFile, 'InFile.txt');
  AlpE1 := ['a' .. 'z'];
  AlpE2 := ['A' .. 'Z']; 
  AlpR1 := ['�' .. '�'];
  AlpR2 := ['�' .. '�'];
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
  WRITELN('����� ����: ', Schet)
END. {CountWords1} 
