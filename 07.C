#include <stdio.h>
#include <stdlib.h>
#include <conio.h>
main()
  {
   int A = 3;
   int B = 4;
   int C;
   clrscr();
   printf("%4d %4d \n", A, B);
   C = A;
   A = B;
   B = C;
   printf("%4d %4d \n", A, B);
   getch();
   }
