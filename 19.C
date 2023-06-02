

#include <stdlib.h>
#include <stdio.h>
#include <conio.h>
#include <string.h>
#include <math.h>
#include <alloc.h>
#define k 6

main()
  {
    int A[k] = {5,9,6,7,2,4};
    int x;
    int y = 0;
    int max=A[0];
    clrscr();
    for(x=0; x<k; x++)
      if (A[x]>max)
      {
       max=A[x];
       y = x;
     }


    for(x=0;x<k;x++)
      printf("%d", A[x]);

    A[y] = 0;
    printf("\n");

    for(x=0;x<k;x++)
      printf("%d", A[x]);


    getch();
  }
