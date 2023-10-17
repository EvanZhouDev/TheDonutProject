#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <math.h>

// expects buffer to be buffer_size * buffer_size / 2 characters long
// returns the amount of characters written to buffer
unsigned long printcircle(unsigned long r, char *buffer, unsigned long buffer_size, char c){
    unsigned long outp = 0;
    unsigned long center = buffer_size / 2, centery = buffer_size / 4;
    for(unsigned long y = 0; y < center; ++y){
	for(unsigned long x = 0; x < buffer_size; ++x){
	    if(sqrt((x - center) * (x - center) + ((y - centery) * (y - centery)) * 4) < r){
		buffer[x + buffer_size * y] = c;
		++outp;
	    }
	}
    }
    return outp;
}

int main(int argc, char **argv){
    unsigned long inside_r, outside_r;

    // exit if too few or too many arguments are given
    if(argc < 2 || argc > 3){
	printf("Not enough arguments\n");
	printf("\nUsage:\n");
	printf(" donut_generator [characters]\t\tGenerates a donut with a minimum of [characters] characters and a donut like ratio of inner and outer radius\n");
	printf(" donut_generator [outside_r] [inside_r]\tGenerates a donut with an outer radius of [outside_r] and an inner radius of [inside_r]\n");
	printf("\nAll arguments passed to this program are expected to be unsigned base 10 integers");
	return 1;
    }
    // specific minimum characters
    else if(argc == 2){
	// calculate inside_r and outside_r
	unsigned long A = strtoul(argv[1], NULL, 10);
	outside_r = (unsigned long)sqrt((2 * A) / (0.84 * M_PI)) + 1;
	inside_r  = (unsigned long)(outside_r * 0.4);
	
	// print calculation result and character estimate to stdout
	printf("Outer radius:\t\t\t%lu\nInner radius:\t\t\t%lu\nPredicted character count:\t%lu\n\n", outside_r, inside_r, (unsigned long)(0.5 * M_PI * (outside_r * outside_r - inside_r * inside_r)));
    }
    // specific inside_r and outside_r
    else if(argc == 3){
	// read inside_r and outside_r
	inside_r  = strtoul(argv[2], NULL, 10);
	outside_r = strtoul(argv[1], NULL, 10);
    }

    // generate donut and write it and amount of characters to stdout
    char *buffer = malloc(outside_r * outside_r * 2);
    memset(buffer, ' ', outside_r * outside_r * 2);
    unsigned long character_amount = printcircle(outside_r, buffer, outside_r * 2, '.');
    character_amount -= printcircle(inside_r, buffer, outside_r * 2, ' ');
    for(unsigned long y = 0; y < outside_r; ++y){
	for(unsigned long x = 0; x < outside_r * 2; ++x){
	    putchar(buffer[x + y * 2 * outside_r]);
	}
	putchar('\n');
    }
    printf("\nCharacter count: %lu\n", character_amount);

    // exit program
    free(buffer); // almost forgot this...
    return 0;
}
