PROGRAM SaranRever(INPUT, OUTPUT);
VAR
  W1, W2, W3, W4, Looking: CHAR;
BEGIN
  W1 := ' ';
  W2 := ' ';
  W3 := ' ';
  W4 := ' ';
  Looking = 'D';
  WHILE Looking = 'D'
  DO
    BEGIN
    W1 := W2
    W2 := W3
    W3 := W4
    READ(W4);
    IF W4 = '#'
    THEN
      Looking := 'N';
    END
END.