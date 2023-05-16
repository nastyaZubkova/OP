PROGRAM Version2(INPUT, OUTPUT); {переводит все буквы в нижний регистр, помещает слова в строки, печатает слова на разных строках}

VAR
  Ch: CHAR;
  Str: STRING;
  Alp: SET OF 'a' .. 'z';
  
PROCEDURE Registr(VAR Ch: CHAR);
VAR
  Int: INTEGER;
BEGIN {Registr}
  Int := Ord(Ch);
  Int := Int + 32;
  Ch := Chr(Int)
END; {Registr}  
  
BEGIN {Version2}
  Alp := ['a' .. 'z']; 
  Str := '';   
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
                  WRITELN(Str);
                Str := ''
              END; 
          IF (EOLN) AND (Str <> '')
          THEN
            WRITELN(Str)       
        END;  
      READLN;
     { WRITELN(Str)}  
    END;
  
END. {Version2} 
