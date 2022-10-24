PROGRAM What(INPUT, OUTPUT); {Enter a character and check if it is a number.}
VAR 
  Ch: CHAR;
BEGIN  {Check the character and output the answer.}
  READ(Ch);
  WRITE('IS THIS CHARACTER A DIGIT? YOUR CHARACTER: ', Ch, ', ANSWER: ');
  IF '0' <= Ch 
  THEN
    IF Ch <= '9'
    THEN 
      WRITELN('YES')
    ELSE
      WRITELN('NO')
  ELSE
    WRITELN('NO')
END.
