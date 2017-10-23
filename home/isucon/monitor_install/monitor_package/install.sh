#!/bin/bash
apt-get -y install htop
apt-get -y install dstat
apt-get -y install glances
apt-get -y install percona-toolkit
apt-get -y install  unzip
wget https://github.com/tkuchiki/alp/releases/download/v0.3.1/alp_linux_amd64.zip
unzip alp_linux_amd64.zip
sudo install ./alp /usr/local/bin



echo "スクリプトだと上手く動かなかったから手動で以下を叩いて(sudo 不要)"
echo "bash <(curl -Ss https://my-netdata.io/kickstart.sh) all"
