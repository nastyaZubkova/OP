
#include <stdlib.h>
#include <stdio.h>
#include <conio.h>
#include <string.h>
#include <math.h>
#include <alloc.h>
#define N 100

main()
  {
    int x,y;
    int s=0;
    clrscr();

 /*   for(x=1; x<=N; x++)
      s = s+x; ;*/ //вариант1

  /*    for(x=1,y=N; ;x++, Y--)
      s=s+x+y;
      if(N % 2 != 0) s=s+x;  */ //способ2

      s = (N+1)*(N/2);

    printf("%d %d \n", N, s);   //способ3







    getch();
  }
