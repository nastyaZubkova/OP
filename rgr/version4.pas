PROGRAM Version4(INPUT, OUTPUT); {�������� �������, �� ������������ ��, ��� ����� �������� �������� � ��������(2+)} 

TYPE 
  Tree = ^NodeType;
  NodeType = RECORD
               Str: STRING;
               Counter: INTEGER;
               LLink, RLink: Tree
             END; 

VAR
  Ch: CHAR;
  Str: STRING;
  Counter: INTEGER;
  Alp: SET OF 'a' .. 'z';
  Root: Tree;
  
PROCEDURE Registr(VAR Ch: CHAR);
BEGIN {Registr}
  IF Ch = "�" THEN Ch := "�" ELSE
  IF Ch = "�" THEN Ch := "�" ELSE
  IF Ch = "�" THEN Ch := "�" ELSE
  IF Ch = "�" THEN Ch := "�" ELSE
  IF Ch = "�" THEN Ch := "�" ELSE
  IF Ch = "�" THEN Ch := "�" ELSE
  IF Ch = "�" THEN Ch := "�" ELSE
  IF Ch = "�" THEN Ch := "�" ELSE
  IF Ch = "�" THEN Ch := "�" ELSE
  IF Ch = "�" THEN Ch := "�" ELSE
  IF Ch = "�" THEN Ch := "�" ELSE
  IF Ch = "�" THEN Ch := "�" ELSE
  IF Ch = "�" THEN Ch := "�" ELSE
  IF Ch = "�" THEN Ch := "�" ELSE
  IF Ch = "�" THEN Ch := "�" ELSE
  IF Ch = "�" THEN Ch := "�" ELSE
  IF Ch = "�" THEN Ch := "�" ELSE
  IF Ch = "�" THEN Ch := "�" ELSE
  IF Ch = "�" THEN Ch := "�" ELSE
  IF Ch = "�" THEN Ch := "�" ELSE
  IF Ch = "�" THEN Ch := "�" ELSE
  IF Ch = "�" THEN Ch := "�" ELSE
  IF Ch = "�" THEN Ch := "�" ELSE
  IF Ch = "�" THEN Ch := "�" ELSE
  IF Ch = "�" THEN Ch := "�" ELSE
  IF Ch = "�" THEN Ch := "�" ELSE
  IF Ch = "�" THEN Ch := "�" ELSE
  IF Ch = "�" THEN Ch := "�" ELSE
  IF Ch = "�" THEN Ch := "�" ELSE
  IF Ch = "�" THEN Ch := "�" ELSE
  IF Ch = "�" THEN Ch := "�" ELSE
  IF Ch = "�" THEN Ch := "�" ELSE
  IF Ch = "�" THEN Ch := "�" ELSE
  IF Ch = "A" THEN Ch := "a" ELSE
  IF Ch = "B" THEN Ch := "b" ELSE
  IF Ch = "C" THEN Ch := "c" ELSE
  IF Ch = "D" THEN Ch := "d" ELSE
  IF Ch = "E" THEN Ch := "e" ELSE
  IF Ch = "F" THEN Ch := "f" ELSE
  IF Ch = "G" THEN Ch := "g" ELSE
  IF Ch = "H" THEN Ch := "h" ELSE
  IF Ch = "I" THEN Ch := "i" ELSE
  IF Ch = "J" THEN Ch := "j" ELSE
  IF Ch = "K" THEN Ch := "k" ELSE
  IF Ch = "L" THEN Ch := "l" ELSE
  IF Ch = "M" THEN Ch := "m" ELSE
  IF Ch = "N" THEN Ch := "n" ELSE
  IF Ch = "O" THEN Ch := "o" ELSE
  IF Ch = "P" THEN Ch := "p" ELSE
  IF Ch = "Q" THEN Ch := "q" ELSE
  IF Ch = "R" THEN Ch := "r" ELSE
  IF Ch = "S" THEN Ch := "s" ELSE
  IF Ch = "T" THEN Ch := "t" ELSE
  IF Ch = "U" THEN Ch := "u" ELSE
  IF Ch = "V" THEN Ch := "v" ELSE
  IF Ch = "W" THEN Ch := "w" ELSE
  IF Ch = "X" THEN Ch := "x" ELSE
  IF Ch = "Y" THEN Ch := "y" ELSE
  IF Ch = "Z" THEN Ch := "z" 
END; {Registr}  

PROCEDURE Insert(VAR Ptr: Tree; Data: STRING);
BEGIN {Insert}               
  IF Ptr = NIL
  THEN
    BEGIN {������ ���� �� ��������� Data}
      NEW(Ptr);
      Ptr^.Str := Data;
      Ptr^.LLink := NIL;
      Ptr^.RLink := NIL;
      Ptr^.Counter := 1
    END
  ELSE
    IF Ptr^.Str > Data
    THEN
      Insert(Ptr^.LLink, Data) 
    ELSE
      IF Ptr^.Str < Data
      THEN
        Insert(Ptr^.RLink, Data)
      ELSE 
        Ptr^.Counter := Ptr^.Counter + 1
           
END;  {Insert}

PROCEDURE PrintTree(Ptr: Tree);
BEGIN {PrintTree}
  IF Ptr <> NIL
  THEN  {�������� ��������� �����, �������, ��������� ������}
    BEGIN
      PrintTree(Ptr^.LLink);
      WRITELN(Ptr^.Str, ' ', Ptr^.Counter);
      PrintTree(Ptr^.RLink)
    END
END;  {PrintTree}

  
BEGIN {Version2}
  Alp := ['a' .. 'z']; 
  Str := '';  
  Root := NIL; 
  WHILE NOT EOF
  DO
    BEGIN
      WHILE NOT EOLN
      DO
        BEGIN  
          READ(Ch);
          Registr(Ch);
          IF Ch IN Alp
          THEN
            Str := Str + Ch
          ELSE
            IF Ch = '-'
            THEN
              Str := Str + Ch
            ELSE
              BEGIN 
                IF Str <> ''
                THEN
                  Insert(Root, Str);
                Str := ''
              END    
        END;  
      READLN 
    END;
  PrintTree(Root);
END. {Version2} 
