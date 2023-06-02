
#include <stdlib.h>
#include <stdio.h>
#include <conio.h>
#include <string.h>
#include <math.h>
#include <alloc.h>

void obmen(int *A, int *B)
  {
    int t;
    t = *A;
    *A = *B;
    *B = t;
  }

main()

  {
    int x=3, y=4;
    clrscr();
    printf("%2d%2d\n", x, y);

    obmen(&x,&y);
    printf("%2d%2d\n", x, y);
    getch();
  }
