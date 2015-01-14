#
# Cookbook Name:: nginx
# Recipe:: default
#
# Copyright 2015, ino_h
#
# All rights reserved - Do Not Redistribute
#

%w{openssl openssl-devel patch nginx}.each do |pkg|
  package pkg do
    action :install
  end
end

service "nginx" do
  supports :status => true, :restart => true, :reload => true
  action [:enable, :start]
end

template "nginx.conf" do
  path "/etc/nginx/nginx.conf"
  source "nginx.conf.erb"
  owner "root"
  group "root"
  mode 0644
  notifies :reload, 'service[nginx]'
end
