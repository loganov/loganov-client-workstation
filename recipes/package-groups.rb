#
# Cookbook Name:: loganov-client-workstation
# Recipe:: package-groups
#
# Copyright 2014, Loganov Industries, LLC
#
# All rights reserved - Do Not Redistribute
#

# X Windows Environment
yumgroup "Server with GUI" do
	action :install 
end

# KVM and LXC Installation
yumgroup "Virtualization Host" do
	action :install 
end

# Compilers, and Interpreters
yumgroup "Development Tools" do
	action :install 
end