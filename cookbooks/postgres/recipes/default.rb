#
# Cookbook Name:: postgres
# Recipe:: default
#
# Copyright 2015, YOUR_COMPANY_NAME
#
# All rights reserved - Do Not Redistribute
#

%w{postgresql-server postgresql-devel}.each do |pkg|
  package pkg do
    action :install
  end
end

# DBの初期化コマンドの実行
# 冪等性を維持するため実行済みか否かをディレクトリの有無で判断
dataDir = "/var/lib/pgsql/data/"
if not File.exists? dataDir then
   execute "postgresql-init" do
      command "service postgresql initdb"
   end
end

# 再起動と自動起動設定
service "postgresql" do
    action [:enable, :restart]
end

# TODO
# IPテーブルの設定が邪魔なので停止
service "iptables" do
   action [:disable, :stop]
end

postgresql_connection_info = {
  host: 'localhost',
  port: 5432,
  username: 'postgres',
  password: 'postgres'
}

# TODO
# /var/lib/pgsql/data/pg_hba.confの設定を変更する
# ident -> trust

# TODO
# sudo useradd postgres -g postgres -d /home/postgres
