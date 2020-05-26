#include <stdio.h>

extern int calc();

int main() {
    int x = calc();
    printf("x = %d\n", x);
    return 0;
}
