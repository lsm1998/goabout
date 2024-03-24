#include "hello.h"
#include <stdlib.h>
#include <string.h>

int say_hello(const char *name, char *resp)
{
    char *prefix = "hello:";
    int len = strlen(prefix) + strlen(name);

    char *temp = (char *) malloc(len);
    strcpy(temp, prefix);
    strcat(temp, name);
    strcpy(resp, temp);
    free(temp);
    return len;
}
