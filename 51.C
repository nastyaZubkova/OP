
#include <stdlib.h>
#include <stdio.h>
#include <conio.h>
#include <string.h>
#include <math.h>
#include <alloc.h>
#define Name "mas.dat"
main()
  {
    char Temp;
    int N = 2; //namber elementa
    int K;
    FILE *p;
    p =fopen(Name, "r+");
  for(N=0;N<K;N++)
   {
    fseek(p, N, 0);
    fread(&Temp, 1, 1, p);
    Temp=Temp ^12;
    fseek(p, N, 0);
    fwrite(&Temp, 1, 1, p);
   }
    fclose(p);



    getch();
  }
