#!/bin/bash
red='\e[1;31m'
green='\e[0;32m'
NC='\e[0m'
IP=$(wget -qO- ipinfo.io/ip);
date=$(date +"%Y-%m-%d"
echo Membuat Directory
mkdir /root/backup
sleep 0.5
echo Start Backup
clear
echo "Harap Tunggu..."
cp /etc/passwd backup/
cp /etc/group backup/
cp /etc/shadow backup/
cp /etc/gshadow backup/
cp -r /etc/wireguard backup/wireguard
cp /etc/ppp/chap-secrets backup/chap-secrets
cp /etc/ipsec.d/passwd backup/passwd1
cp /etc/shadowsocks-libev/akun.conf backup/ss.conf
cp -r /var/lib/premium-script/ backup/premium-script
cp -r /home/sstp backup/sstp
cp -r /etc/v2ray backup/v2ray
cp -r /etc/trojan backup/trojan
cp -r /usr/local/shadowsocksr/ backup/shadowsocksr
cp -r /home/vps/public_html backup/public_html
cd /root
zip -r backups.zip backup > /dev/null 2>&1
mv backups.zip /home/vps/public_html/backups.zip
link = "http://$IP:81/backups.zip"
echo -e "Klik Link Dibawah Untuk Mengunduh Data Backup VPS Anda

IP VPS : $IP

LINK :
$link

Terima Kasih
M AFDHAN-NEZAVPN@2021"
rm -rf /root/backup
rm -r /root/$IP-$date.zip
echo "Berhasil"

