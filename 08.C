#include <stdio.h>
#include <stdlib.h>
#include <conio.h>
main()
  {
   int A = 3;
   int B = 4;
   int C;
   float S;
   float P;
   clrscr();
 Met1:
   printf("Введите первую  сторону: ");
   scanf("%d", &A);
   if (A <= 0) { puts("error"); goto Met1;}
 Met2:
   printf("\nВведите вторую сторону: ");
   scanf("%d", &B);
   if (B <= 0) { puts("error"); goto Met2;}
 Met3:
   printf("\nВведите третью сторону: ");
   scanf("%d", &C);
   if (C <= 0) { puts("error"); goto Met3;}

   if (A >= B+C || B >= A+C || C >= B+C) { puts("error"); goto Met1;}
   P = (A + B + C)/2;
   S = sqrt(P*(P-A)*(P-B)*(P-C));
   printf("\nS = %d", S);
   getch();
   }
