chef-solo sample
================

## 事前準備

- Rubyのインストール
- gem install chef
- knife configure
- サーバーのssh設定

## サーバにレシピを適用

$URLにレシピを適用したいサーバーのURLを指定

- knife-solo prepare 
- knife solo cook $URL
