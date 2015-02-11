#
# Cookbook Name:: rails
# Recipe:: default
#
# Copyright 2015, YOUR_COMPANY_NAME
#
# All rights reserved - Do Not Redistribute
#

["rails", "therubyracer"].each do |name|
  gem_package name do
    options("--no-ri --no-doc")
  end
end
# TODO action install (up to date)
gem_package "io-console"
# TODO action install (up to date)
gem_package "nokogiri"

package "sqlite-devel" do
  action :install
end
