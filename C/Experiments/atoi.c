#include <stdio.h>
int atoi(char s[]);

int main()
{
  char test[20];
  int c = getchar();
  test[0] = c;
  int counter = 1;

  while (c != '\n') {
    c = getchar();
    test[counter++] = c;
  }

  int result = atoi(test);
  printf("%d", result);
}

int atoi(char s[])
{
  int n = 0;

  for (int i = 0; s[i] >= '0' && s[i] <= '9'; i++) {
    n = 10 * n + (s[i] - '0');
  }

  return n;
}
