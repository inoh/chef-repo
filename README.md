chef-solo sample
================

## 事前準備

- Rubyのインストール
- gem install chef
- knife configure
- サーバーのssh設定

## サーバにレシピを適用

$URLにレシピを適用したいサーバーのURLを指定

- knife solo prepare $URL
- knife solo cook $URL

$URLで指定する名称でnodesフォルダ内に設定ファイルが必要です。