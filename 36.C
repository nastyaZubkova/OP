
#include <stdlib.h>
#include <stdio.h>
#include <conio.h>
#include <string.h>
#include <math.h>
#include <alloc.h>

int summa(int A, int B)
   {
     int temp;
     temp = A+B;
     return temp;
   }

   /*
     int summa(int A, int B)
     {
       return A+B;
     }
   */

main()
  {
    int x=3, y=4, z;

    clrscr();
    z = summa(x,y); printf("%d\n", z);
    printf("%d", summa(12,7));


    getch();
  }
