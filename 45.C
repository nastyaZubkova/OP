
#include <stdlib.h>
#include <stdio.h>
#include <conio.h>
#include <string.h>
#include <math.h>
#include <alloc.h>

int kwa(int A)
  {
    return A*A;
  }
int kub(int A)
  {
    return A*A*A;
  }

main()
  {
    int (*p)();
    int x=3, y;
    clrscr();
    p = kwa;
    y = p(x);
    printf("%d\n", y);

    p = kub;
    y = p(x);
    printf("%d", y);
    getch();
  }
