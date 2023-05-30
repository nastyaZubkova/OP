UNIT Sort;

INTERFACE
             
  PROCEDURE Insert(Data: STRING);
  PROCEDURE PrintTree(VAR OutFile: TEXT);
  
IMPLEMENTATION

  TYPE 
    Tree = ^NodeType;
     NodeType = RECORD
                 Str: STRING;
                 Counter: INTEGER;
                 LLink, RLink: Tree
               END; 

  VAR 
    Root, Tp: Tree; 
    Data: STRING;
    
    
  PROCEDURE InsertImp(VAR Tp: Tree; Data: STRING);
  BEGIN {Insert}              
    IF Tp = NIL
    THEN
      BEGIN {Создаём лист со значением Data}
        NEW(Tp);
        Tp^.Str := Data;
        Tp^.LLink := NIL;
        Tp^.RLink := NIL;
        Tp^.Counter := 1
      END
    ELSE
      IF Tp^.Str > Data
      THEN
        InsertImp(Tp^.LLink, Data) 
      ELSE
        IF Tp^.Str < Data
        THEN
          InsertImp(Tp^.RLink, Data)
        ELSE 
          Tp^.Counter := Tp^.Counter + 1
           
  END; {Insert}

  PROCEDURE PrintTreeImp(Tp: Tree; VAR OutFile: TEXT);
  BEGIN {PrintTree}
    IF Tp <> NIL
    THEN  {Печатаем поддерево слева, вершину, поддерево справа}
      BEGIN
        PrintTreeImp(Tp^.LLink, OutFile);
        WRITELN(OutFile, Tp^.Str, ' ', Tp^.Counter);
        PrintTreeImp(Tp^.RLink, OutFile)
      END
  END;  {PrintTree}
  
  PROCEDURE Insert(VAR Data: STRING); 
  BEGIN
    InsertImp(Root, Data)
  END; 
  
  PROCEDURE PrintTree(VAR OutFile: TEXT);
  BEGIN
    PrintTreeImp(Root, OutFile)
  END;
  
BEGIN
  Root := NIL
END.  
