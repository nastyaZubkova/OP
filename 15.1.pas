PROGRAM Revers(INPUT, OUTPUT);
USES Count3;
VAR 
  Ch1, Ch2, Ch3: CHAR;
BEGIN{Revers}
  Start; {Ch1, Ch2, Ch3 := 0, 0, 0}
  Value(Ch1, Ch2, Ch3);{Связь переменных}
  WRITE('Вход:');
  IF NOT EOLN
  THEN
    READ(Ch2);
  IF NOT EOLN
  THEN
    READ(Ch3);  
  WHILE NOT EOLN
  DO 
    BEGIN 
      Ch1 := Ch2;
      Ch2 := Ch3;
      READ(Ch3);
      IF (Ch1 < Ch2) AND (Ch2 > Ch3)
      THEN
        Bump;{+1 revers}
      IF (Ch1 > Ch2) AND (Ch2 < Ch3)
      THEN
        Bump {+1 revers} 
    END;
  Value(Ch1, Ch2, Ch3);{Связб переменных}
  WRITELN('Количество реверсов:', Ch1, Ch2, Ch3)  
END.{Revers}  
