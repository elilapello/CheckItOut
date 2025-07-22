#include "stdio.h"
#include "string.h"
#include "menu_utils.h"

int main(int argc, char* argv[]) {
    if (argc < 2) {
        printf("%s", "Usage is checkit --<option> <arg>\nFor help use \"checkit --help\"\n");
        return 1;
    }

    if (strcmp(argv[1], "--help") == 0) {
        display_help();
        return 1;
    }

    return 0;
}