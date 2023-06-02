
#include <stdlib.h>
#include <stdio.h>
#include <conio.h>
#include <string.h>
#include <math.h>
#include <alloc.h>
#define n 2
#define k 3

main()
  {
    int x,y;
    int s=1;
    clrscr();

   // for(x=1; x<=k; x++) s = s*n;  способ 1
   s = pow(n,k); //способ2

    printf("%d в степени %d равно %d", n, k, s);







    getch();
  }
