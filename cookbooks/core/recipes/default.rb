#
# Cookbook Name:: core
# Recipe:: default
#
# Copyright 2015, ino_h
#
# All rights reserved - Do Not Redistribute
#

%w{ruby-devel gcc gcc-c++ openssl openssl-devel patch nginx}.each do |pkg|
  package pkg do
    action :install
  end
end
