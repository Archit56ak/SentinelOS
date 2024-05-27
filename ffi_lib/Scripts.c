#include <stdio.h>
#include <stdlib.h>
#include "Main.h"

void runSnortScript(void) {
    system("bash snort.sh");
}

void TCPenable(void)
{
    system("bash tcp_cook_enable.sh");
}

void TCPdisable(void)
{
    system("bash tcp_cook_disable.sh");
}

void IPenable(void)
{
    system("bash ip_for_enable.sh");
}
void IPdisable(void)
{
     system("bash ip_for_disable.sh");
}
void Installufw(void)
{
    system("bash ufw_install.sh");
}
void Installauditd(void)
{
    system("bash auditd_install.sh");
}
void SSHroot(void)
{
    system("bash ssh_root.sh");
}


