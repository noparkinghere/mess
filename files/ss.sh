#!/bin/bash

apt install python-pip && pip install shadowsocks
wget https://raw.githubusercontent.com/noparkinghere/mess/master/files/ss_config
cp ./ss_config /etc/shadowsocks.json 

apt install supervisor
wget https://raw.githubusercontent.com/noparkinghere/mess/master/files/supervisor_append
cp /etc/supervisor/supervisord.conf{,backup}
cat supervisor_append >> /etc/supervisor/supervisord.conf

service supervisor restart
