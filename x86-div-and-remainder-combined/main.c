#include <stdio.h>

// Calculates the sum of the division and the remainder of a and b,
// i.e. (a / b) + (a % b)
extern int calc(int, int);

int main() {
    int a = 7;
    int b = 4;
    int x = calc(a, b);
    printf("calc(%d, %d) = %d\n", a, b, x);
    return 0;
}
