

#include <stdlib.h>
#include <stdio.h>
#include <conio.h>
#include <string.h>
#include <math.h>
#include <alloc.h>
#define k 10

main()
  {
    int A[k];
    int B[] = { 1, 2, 3, 4, 5, 6, 7, 8, 9, 10}
    int x;
    int y=k;
    int c,a;
    int flag;
    clrscr();

    randomize();
    for(x=0;x<k;x++)
    {
      A[x] = random(B[]);
      y = A[x];
      while B[c] != y
	c++;
      c++;
      B[c]
    }


    printf("\nсдучайные числа: ");
    for(x=0;x<k;x++)
      printf("%4d", A[x]);


    getch();
  }
