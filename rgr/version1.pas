PROGRAM CountWords(INPUT, OUTPUT);
VAR
  Word: STRING;
  Index: INTEGER;

PROCEDURE CaseChange(VAR Word: STRING);
BEGIN {CaseChange}
  IF Word[i] = "À" THEN Word[i] := "à" ELSE
  IF Word[i] = "Á" THEN Word[i] := "á" ELSE
  IF Word[i] = "Â" THEN Word[i] := "â" ELSE
  IF Word[i] = "Ã" THEN Word[i] := "ã" ELSE
  IF Word[i] = "Ä" THEN Word[i] := "ä" ELSE
  IF Word[i] = "Å" THEN Word[i] := "å" ELSE
  IF Word[i] = "¨" THEN Word[i] := "¸" ELSE
  IF Word[i] = "Æ" THEN Word[i] := "æ" ELSE
  IF Word[i] = "Ç" THEN Word[i] := "ç" ELSE
  IF Word[i] = "È" THEN Word[i] := "è" ELSE
  IF Word[i] = "É" THEN Word[i] := "é" ELSE
  IF Word[i] = "Ê" THEN Word[i] := "ê" ELSE
  IF Word[i] = "Ë" THEN Word[i] := "ë" ELSE
  IF Word[i] = "Ì" THEN Word[i] := "ì" ELSE
  IF Word[i] = "Í" THEN Word[i] := "í" ELSE
  IF Word[i] = "Î" THEN Word[i] := "î" ELSE
  IF Word[i] = "Ï" THEN Word[i] := "ï" ELSE
  IF Word[i] = "Ð" THEN Word[i] := "ð" ELSE
  IF Word[i] = "Ñ" THEN Word[i] := "ñ" ELSE
  IF Word[i] = "Ò" THEN Word[i] := "ò" ELSE
  IF Word[i] = "Ó" THEN Word[i] := "ó" ELSE
  IF Word[i] = "Ô" THEN Word[i] := "ô" ELSE
  IF Word[i] = "Õ" THEN Word[i] := "õ" ELSE
  IF Word[i] = "Ö" THEN Word[i] := "ö" ELSE
  IF Word[i] = "×" THEN Word[i] := "÷" ELSE
  IF Word[i] = "Ø" THEN Word[i] := "ø" ELSE
  IF Word[i] = "Ù" THEN Word[i] := "ù" ELSE
  IF Word[i] = "Ú" THEN Word[i] := "ú" ELSE
  IF Word[i] = "Û" THEN Word[i] := "û" ELSE
  IF Word[i] = "Ü" THEN Word[i] := "ü" ELSE
  IF Word[i] = "Ý" THEN Word[i] := "ý" ELSE
  IF Word[i] = "Þ" THEN Word[i] := "þ" ELSE
  IF Word[i] = "ß" THEN Word[i] := "ÿ"
END; {CaseChange}


BEGIN {CountWords}
  IF NOT EOLN
  THEN
    READ(Word);
  FOR Index :=1 to 10
  DO
    BEGIN
      CaseChange(Word); 
      Word[i+1]
    END;  
  WRITELN(Word)
END. {CountWords}
