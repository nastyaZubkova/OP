PROGRAM Revers(INPUT, OUTPUT);
USES Count3;
VAR 
  Ch1, Ch2, Ch3, State: CHAR;
BEGIN{Revers}
  State := '0';
  Start; {Ch1, Ch2, Ch3 := 0, 0, 0}
  Value(Ch1, Ch2, Ch3);{Привязка переменных}
  WRITE('Вход:');
  WHILE NOT EOLN
  DO 
    BEGIN 
      Ch1 := Ch2;
      Ch2 := Ch3;
      READ(Ch3);
      State := '1';
      IF (Ch1 < Ch2) AND (Ch2 > Ch3)
      THEN
        Bump;{+1 revers}
      IF (Ch1 > Ch2) AND (Ch2 < Ch3)
      THEN
        Bump {+1 revers} 
    END;
  WRITELN;  
  Value(Ch1, Ch2, Ch3);{Привязка переменных}
  WRITELN('Количество реверсов:', Ch1, Ch2, Ch3)  
END.{Revers}  
