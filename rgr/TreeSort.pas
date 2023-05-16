UNIT TreeSort;

INTERFACE

  TYPE 
    Tree = ^NodeType;
     NodeType = RECORD
                 Str: STRING;
                 Counter: INTEGER;
                 LLink, RLink: Tree
               END; 
             
  PROCEDURE Insert(VAR Ptr: Tree; Data: STRING);
  PROCEDURE PrintTree(Ptr: Tree; VAR OutFile: TEXT);
  
IMPLEMENTATION

  VAR 
    Ptr: Tree; 
    Data: STRING;
    
  PROCEDURE Insert(VAR Ptr: Tree; Data: STRING);
  BEGIN {Insert}               
    IF Ptr = NIL
    THEN
      BEGIN {Создаём лист со значением Data}
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
           
  END; {Insert}

  PROCEDURE PrintTree(Ptr: Tree; VAR OutFile: TEXT);
  BEGIN {PrintTree}
    IF Ptr <> NIL
    THEN  {Печатаем поддерево слева, вершину, поддерево справа}
      BEGIN
        PrintTree(Ptr^.LLink, OutFile);
        WRITELN(OutFile, Ptr^.Str, ' ', Ptr^.Counter);
        PrintTree(Ptr^.RLink, OutFile)
      END
  END;  {PrintTree}
  
BEGIN
END.  
