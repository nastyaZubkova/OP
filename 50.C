
#include <stdlib.h>
#include <stdio.h>
#include <conio.h>
#include <string.h>
#include <math.h>
#include <alloc.h>
#define Name "mas.dat"
main()
  {
    int Temp;
    int N = 2; //namber elementa
    FILE *p;

    p =fopen(Name, "r+");
    fseek(p, N * sizeof(int), 0);
    fread(&Temp, sizeof(int), 1, p);
    Temp++;
    fseek(p, N * sizeof(int), 0);
    fwrite(&Temp, sizeof(int), 1, p);
    fclose(p);



    getch();
  }
