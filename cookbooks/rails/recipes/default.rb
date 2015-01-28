#
# Cookbook Name:: rails
# Recipe:: default
#
# Copyright 2015, YOUR_COMPANY_NAME
#
# All rights reserved - Do Not Redistribute
#

gem_package "rails"
gem_package "therubyracer"
gem_package "io-console"

package "sqlite-devel" do
  action :install
end
