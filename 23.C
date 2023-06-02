

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
    int temp;
    int flag;
    clrscr();

    printf("масссив до обработки:    ");
    for(x=0;x<k;x++)
      printf("%4d", A[x]);


      for(y=k-2;y>=0;y--)
	for(x=0;x<=y;x++)
	  if (A[x] > A[x+1])
	    {
	      temp = A[x];
	      A[x] = A[x+1];
	      A[x+1] = temp;
	    }



    printf("\nмасссив после обработки: ");
    for(x=0;x<k;x++)
      printf("%4d", A[x]);


    getch();
  }
