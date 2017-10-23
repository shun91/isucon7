#!/bin/sh
set -e

now=`date +%Y%m%d-%H%M%S`
mv /var/log/nginx/access.log /var/log/nginx/access.log.$now # nginxのログをローテート
#念のためaccess.logをtouchできるようにしておく
touch /var/log/nginx/access.log
systemctl reload nginx

#mv /var/log/mysql/slow.log /var/log/mysql/slow.log.$now # mysqlのslowlogをローテート
#mysqladmin -uisucon -pisucon flush-logs

#大会内容次第なのでとりあえコメントアウトしておく
# アプリケーションの再起動
systemctl restart isubata.nodejs.service 

# エラーが出てないかログを見る
#journalctl -f
