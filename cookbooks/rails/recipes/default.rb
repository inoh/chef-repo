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
# TODO action install (up to date)
gem_package "io-console"
# TODO action install (up to date)
gem_package "nokogiri"

package "sqlite-devel" do
  action :install
end
