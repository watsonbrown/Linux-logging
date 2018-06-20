
#!/bin/bash
printf '\n#baseline information for linux based systems being checked#\n' > log.txt
printf '\n =============================Computer Information============================= \n' >> log.txt
#displays hostname of computer#
hostname >> log.txt
#displays time and date#
date >> log.txt
#displays currently logged on users#
w >> log.txt
#outputs current user account being used#
whoami >> log.txt
#displays operating system and version information#
uname -a >> log.txt
#list the groups the user belongs to#
groups >> log.txt
#list all users accounts on computer#
cat /etc/passwd >> log.txt
#displays the history of commands used in previous terminal sessions#
history >> log.txt
printf '\n =============================Directory & Process Information============================= \n' >> log.txt
#show all currently running processes at time of logging#
ps -a >> log.txt
#list of currently mounted items"
cat /proc/mounts >> log.txt
#current directory on host device#
pstree >> log.txt
#current memory usage at time of logging#
vmstat >> log.txt
printf '\n =============================Network & Firewall Information============================= \n' >> log.txt
#current network interfaces#
ifconfig -a >> log.txt
#will display all information about currently used tcp,udp,listening ports,programs using ports#
netstat -tulpn >> log.txt
#will display just tcp, udp connection for all sessions#
netstat -tua >> log.txt
#show currently configured iptables, firewall information and rules configured#
#iptables -L -n >> log.txt 
#cat log.txt? >> intiallog.txt
echo "Baseline log file has been created on desktop - hal 9000" 

