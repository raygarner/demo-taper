/* USAGE: ./click 90 */

#include <stdio.h>
#include <stdlib.h>
#include <unistd.h>
#include <string.h>

#define ONESEC 1000000
#define ONEBPM 60000000
#define CLICK  "/home/ray/src/demotaper/.click/beep.wav &"
#define PLAYER "aplay -q -t wav "

double CalcInterval(int bpm);
int play();
void buildCommand(char *command);

double CalcInterval(int bpm)
{
    return ONEBPM / bpm;
}

int play(char *command)
{
    return system(command);
}

void buildCommand(char *command)
{
    strcpy(command, PLAYER);
    strcat(command, CLICK);
}

int main(int argc, char **argv)
{
    double interval = CalcInterval(atoi(argv[argc - 1]));
    char command[64];

    buildCommand(command);

    while (1) {
        play(command);

        usleep(interval);
    }

    return 0;
}


