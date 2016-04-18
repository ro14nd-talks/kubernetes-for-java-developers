#include <signal.h>
#include <unistd.h>

int main(int argc, char **argv)
{
    signal(SIGTSTP, SIG_DFL);
    signal(SIGINT, SIG_DFL);
    execvp(argv[1], argv+1);
}