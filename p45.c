#include <stdio.h>
#include <math.h>

int is_triangle(int n) {

  double a;
  double b;

  a = (sqrt(((8*n) + 1)) - 1 )/(2.0);

  if(fmod(a, 1) == 0) { // || fmod(b, 1) == 0) {
    return 1;
  }

  return 0;

}

int next_triangle(int n) {
  
  int next;

  next = (n * (n + 1))/(2.0);

  return next;
}

int is_pentagonal(int n) {

  double a;
  double b;

  b = (1 + sqrt(((24*n) + 1)))/(6.0);

  if(fmod(b, 1) == 0) { // || fmod(b, 1) == 0) {
    return 1;
  }

  return 0;
}

int is_hexagonal(int n) {

  double b;
  double c;

  b = (sqrt((8*n) + 1) + 1)/(4.0);

  if(fmod(b, 1) == 0) { // || fmod(c, 1) == 0) {
    return 1;
  }

  return 0;
}

int main(int argc, char *argv[]) {

  int i;
  int c;

  c = 286;
  i = next_triangle(c);

  while(1) {
    
      if(is_pentagonal(i) == 1) {
        if(is_hexagonal(i) == 1) {
          printf("c==%d\n", c);
          break;
        }
      }
    c++;
    i = next_triangle(c);
  }

  printf("c==%d\n", c);

  return 0;
}
