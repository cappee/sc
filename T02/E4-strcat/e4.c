// scrivere la soluzione qui...
#include <stdio.h>

char *my_strcat(char *dest, const char *src) {
    int i=0;
    int j=0;

    while (dest[i] != '\0') i++;

    while (src[j] != '\0') {
        dest[i+j] = src[j];
        j++;
    }
    dest[i+j] = '\0';

    return dest;
}
