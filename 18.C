

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
    int max=A[0];
    int min=A[0];
    clrscr();
    for(x=0; x<k; x++)
    {
      if (A[x]>max) max=A[x];
      if (A[x]<min) min=A[x];
    }

    printf("%d", max);
    printf("%d", min);



    getch();
  }
