#
# Cookbook Name:: oraclejdk
# Recipe:: default
#
# Copyright 2014, YOUR_COMPANY_NAME
#
# All rights reserved - Do Not Redistribute
#

jdkrpm_file_name = "jdk-#{node[:oraclejdk][:version]}-linux-x64.rpm"
jdkrpm_file_path = "#{Chef::Config[:file_cache_path]}/#{jdkrpm_file_name}"

cookbook_file jdkrpm_file_path do
  source jdkrpm_file_name
  action :create_if_missing
end
package "jdk" do
  action :install
  provider Chef::Provider::Package::Rpm
  source jdkrpm_file_path
end

