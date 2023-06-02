
#include <stdlib.h>
#include <stdio.h>
#include <conio.h>
#include <string.h>
#include <math.h>
#include <alloc.h>

int fact(int n)
  {
    if (n==1) return 1;
    return n*fact(n-1);
  }

/* int fact(int n)
     {
       if (n==1) return 1;
       return n*fact(n-1);
     }

    int fact(int n)
     {
       return n==1 ? 1: n*fact(n-1);
     }
      */

main()
  {
    int x=5, y;
    clrscr();
    y = fact(x);
    printf("факториал %d равен %d", x, y);
    getch();
  }
