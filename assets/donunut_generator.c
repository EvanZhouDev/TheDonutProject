#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <math.h>

// expects buffer to be buffer_size * buffer_size characters long
// returns the amount of characters written to buffer
unsigned long printcircle(unsigned long r, char *buffer, unsigned long buffer_size, char c){
    unsigned long outp = 0;
    unsigned long center = buffer_size / 2;
    for(unsigned long y = 0; y < buffer_size; ++y){
	for(unsigned long x = 0; x < buffer_size; ++x){
	    if(sqrt((x - center) * (x - center) + (y - center) * (y - center)) < r){
		buffer[x + buffer_size * y] = c;
		++outp;
	    }
	}
    }
    return outp;
}

int main(int argc, char **argv){
    // exit if too few arguments are given
    if(argc < 3){
	printf("Not enough arguments\n");
	printf("\nUsage:\n donut_generator [inside_r] [outside_r]\tGenerates a doughnut with an outer radius of [outside_r] and an inner radius of [inside_r]\n");
	return 1;
    }

    unsigned long inside_r  = strtoul(argv[1], NULL, 10),
		  outside_r = strtoul(argv[2], NULL, 10);
    char *buffer = malloc(outside_r * outside_r * 4);

    memset(buffer, ' ', outside_r * outside_r * 4);

    unsigned long character_amount = printcircle(outside_r, buffer, outside_r * 2, '.');
    character_amount -= printcircle(inside_r, buffer, outside_r * 2, ' ');

    for(unsigned long y = 0; y < outside_r * 2; ++y){
	for(unsigned long x = 0; x < outside_r * 2; ++x){
	    putchar(buffer[x + y * 2 * outside_r]);
	}
	putchar('\n');
    }
    printf("\nCharacter count: %lu\n", character_amount);

    free(buffer); // almost forgot this...
}
