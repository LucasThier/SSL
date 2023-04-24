#include <stdio.h>

int main()
{
    printf("Hello, World 0!\n");
    FILE *file = freopen("output.txt", "w", stdout);
    printf("Hello, World!\n");
    fclose(file);
    return 0;
}