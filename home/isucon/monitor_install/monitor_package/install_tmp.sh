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

#mysql
#apt-get install mysql-server
#
##myslqのslow.logを出せるようにしておく、ただし[mysqld]の記述がある前提
#sed -e "s/\[mysqld\]/\[mysqld\]\nslow_query_log = 1\nslow_query_log_file = \/var\/log\/mysql\/slow.log\nlong_query_time = 0\n/g" -i $mysql_conf_path
mysql_conf_path=/etc/mysql/my.cnf
cp $mysql_conf_path ~/my.cnf.old
cat <<EOF > $mysql_conf_path
[mysqld_safe]
socket          = /var/run/mysqld/mysqld.sock
nice            = 0

[mysqld]
user            = mysql
pid-file        = /var/run/mysqld/mysqld.pid
socket          = /var/run/mysqld/mysqld.sock
port            = 3306
basedir         = /usr
datadir         = /var/lib/mysql
tmpdir          = /tmp
lc-messages-dir = /usr/share/mysql
skip-external-locking
bind-address            = 127.0.0.1
max_allowed_packet      = 16M
log_error = /var/log/mysql/error.log
slow_query_log = 1
slow_query_log_file = /var/log/mysql/slow.log
long_query_time = 0
EOF
