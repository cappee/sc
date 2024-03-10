// Inserire la soluzione qui...
#include <stdio.h>

void uint2bin(unsigned x, char bin[32]) {
	int i = 31;
	while (i >= 0) {
		bin[i] = '0' + (x & 1);  // controlla se il bit meno significativo è 1
		x = (x >> 1);  //sposta tutti i bit della variabile verso destra (come dividere per 2)

		i--;
	}

}
