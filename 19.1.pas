PROGRAM Prime(INPUT, OUTPUT);
CONST
  MIN = 2;
  MAX = 100;
TYPE
  NumbersSet = SET OF MIN .. MAX;
VAR
  Sieve: NumbersSet;
  Number, PrimeNumber: INTEGER;
BEGIN
  PrimeNumber := MIN;
  Sieve := [MIN .. MAX];
  WHILE Sieve <> []
  DO
    BEGIN
      Number := PrimeNumber;
      WRITE(PrimeNumber, ' '); 
      WHILE Number IN Sieve
      DO
        BEGIN
          Sieve := Sieve - [Number];
          Number := Number + PrimeNumber
        END;
      WHILE (NOT (PrimeNumber IN Sieve)) AND (PrimeNumber <= MAX)
      DO  
        PrimeNumber := PrimeNumber + 1
    END;
  WRITELN            
END.      

