PROGRAM PseudographicCharacterPrinting(INPUT, OUTPUT);
CONST
  LetterStylesM = [1, 5, 6, 7, 9, 10, 11, 13, 15, 16, 20, 21, 25];
  LetterStylesH = [2, 4, 7, 9, 12, 13, 14, 17, 19, 22, 24];
  LetterStylesT = [1, 2, 3, 4, 5, 8, 13, 18, 23];
TYPE 
  CustomSet = SET OF 1 .. 25;
VAR 
  Ch: CHAR; 
  LetterStyles: CustomSet;  
   
   
PROCEDURE SumbolPrinting(LetterStyles: CustomSet);
VAR 
  Position: INTEGER;
BEGIN {SumbolPrinting}
  FOR Position := 1 TO 25
  DO
    BEGIN
      IF (Position IN LetterStyles)
      THEN
        WRITE('X')
      ELSE
        WRITE(' ');
      IF (Position MOD 5 = 0)
      THEN
        WRITELN 
    END
END; {SumbolPrinting}     
   
   
PROCEDURE CaracterRecognition(VAR LetterStyles: CustomSet; VAR Ch: CHAR);
BEGIN
  CASE Ch OF
      'M', 'm': LetterStyles := LetterStylesM;
      'T', 't': LetterStyles := LetterStylesT;
      'H', 'h': LetterStyles := LetterStylesH
  ELSE
    BEGIN
      WRITE('¬ведЄнный символ не подходит');
      LetterStyles := []
    END
  END
END; 
   
   
BEGIN
  WHILE NOT EOLN
  DO
    BEGIN
      READ(Ch);
      CaracterRecognition(LetterStyles, Ch);
      IF LetterStyles <> []
      THEN
        SumbolPrinting(LetterStyles);  
      WRITELN 
    END
END.
                
