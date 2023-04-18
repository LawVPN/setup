#!/bin/bash
clear

echo "Script by LawNET"
sleep 5

rm /etc/ssh/sshd_config
sleep 3

cd /etc/ssh
ls
sleep 5

wget https://raw.githubusercontent.com/notmycontent/setup/main/sshd_config
sleep 3

service ssh restart
service sshd restart
sleep 5
clear

apt update
apt install vnstat -y
apt install htop -y
apt upgrade -y
vnstat
sleep 5

cd
rm opening.sh

reboot

