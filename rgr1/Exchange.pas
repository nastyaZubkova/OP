UNIT Exchange;

INTERFACE
PROCEDURE CaseChange(VAR Ch: CHAR);

IMPLEMENTATION
VAR
  Ch: CHAR;
  
PROCEDURE CaseChange(VAR Ch: CHAR);
VAR
  Int: INTEGER;
  Alp: SET OF 'a' .. 'z';
  AlpR: SET OF 'à' .. 'ÿ';
BEGIN {CaseChange}
  Alp := ['a' .. 'z']; 
  AlpR := ['à' .. 'ÿ'];
  IF NOT((Ch IN Alp) OR (Ch IN AlpR))
  THEN
    BEGIN
      Int := Ord(Ch);
      Int := Int + 32;
      Ch := Chr(Int)
    END
END; {CaseChange}    

BEGIN
END.

