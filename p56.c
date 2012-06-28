#include <stdio.h>
#include <stdlib.h>
#include <string.h>


int main(int argc, char *argv[]) {
  int i = 0;
  int j = 0;
  int k = 0;

  for(i = 1; i < 101; i++) {

    for(j = 1; j < 101; j++) {
      k = pow(i, j);
    }

  }
  printf("k = %d\n", k);
  printf("Done.\n");
  return 0;
}
