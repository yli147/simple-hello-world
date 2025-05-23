#include <stdio.h>
#include <time.h>
int count = 0;
clock_t last_ticks = 0;
int test_loop()
{
    printf("Hello, World %d!\n", count++);
}

int main() {
    last_ticks = clock();
    while(1) {
	    test_loop(); 
	    printf("Time %ld\n", clock() - last_ticks);
	    last_ticks = clock();
    }
    return 0;
}

