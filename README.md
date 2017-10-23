# isucon7

ISUCON7の記録

## 利用言語

Node.js

## スコア

- ベストスコア：30914点
- 最終スコア：20520点

## やったこと

- 再起動スクリプトを用意
  - https://github.com/shun91/isucon7/blob/master/home/isucon/restart.sh
- 各種モニタリングツールを入れた
  - https://github.com/shun91/isucon7/blob/master/home/isucon/monitor_install/monitor_package/install_tmp.sh
- iconsをnginxが返すようにした。
  - https://github.com/shun91/isucon7/commit/2f7d874a0b2ef91d1683f87cb9f3419d65deba3a
  - 画像は下記のシェルを使って取り出した
    - https://github.com/shun91/isucon7/blob/master/home/isucon/get_icon.sh
  - nginxの設定はこの辺
    - https://github.com/shun91/isucon7/blob/master/etc/nginx/sites-enabled/nginx.conf#L13-L15
- クエリの改善
  - https://github.com/shun91/isucon7/commit/621201f2234e6f04e4dd4878511b244472726f04
  - https://github.com/shun91/isucon7/commit/dc46172ada3ea2a211b11026a6d3aca19ff86e00
- userテーブルはinitializeのタイミングで全てredisにキャッシュ
  - https://github.com/shun91/isucon7/commit/4401d62270b18a9eb37aa8a4e0a9cb0b37ebeba6