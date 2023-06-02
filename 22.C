

#include <stdlib.h>
#include <stdio.h>
#include <conio.h>
#include <string.h>
#include <math.h>
#include <alloc.h>
#define k 6

main()
  {
    int A[k] = {5,8,3,7,4,6};
    int x;
    int y;
    int flag;
    clrscr();

    printf("масссив до обработки:    ");
    for(x=0;x<k;x++)
      printf("%4d", A[x]);

    do
      {
	flag = 0;
	for(x=0;x<k-1;x++)
	  if (A[x] > A[x+1])
	    {
	      y = A[x];
	      A[x] = A[x+1];
	      A[x+1] = y;
	      flag = 1;
	    }
       }
     while(flag);

    printf("\nмасссив после обработки: ");
    for(x=0;x<k;x++)
      printf("%4d", A[x]);


    getch();
  }
