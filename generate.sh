#! /bin/bash

cd $(dirname $0)

wget -O ipv4-address-space.csv https://www.iana.org/assignments/ipv4-address-space/ipv4-address-space.csv
wget -O delegated-apnic-latest https://ftp.apnic.net/stats/apnic/delegated-apnic-latest

/opt/anaconda3/bin/python produce.py --next 10.6.107.2

mv -f routes4.conf /etc/bird.route/routes4.conf
/usr/sbin/birdc configure