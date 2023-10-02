#include <stdio.h>

#define MAX_LINE_SIZE 1000

void printExercice(const char *exercice) {
        FILE *f = fopen(exercice, "r");
        char line[MAX_LINE_SIZE] = {0};
        while(fgets(line, MAX_LINE_SIZE, f)) {
                printf("%s", line);
        }
}

int main() {
        return 0;
}
