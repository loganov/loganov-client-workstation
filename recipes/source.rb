#
# Cookbook Name:: loganov-client-workstation
# Recipe:: source
#
# Copyright 2014, Loganov Industries, LLC
#
# All rights reserved - Do Not Redistribute
#

## Ruby
# *download source
# *compile / make install
# *ensure PATH

remote_file '/tmp/ruby.tar.gz' do
	source node['ruby']['url']
end

bash "ruby" do
	code <<-EOH
    tar -xpvzf /tmp/ruby.tar.gz
    cd ruby
    ./configure
    make
    make install
	EOH
end

## Vagrant
# *rpm_package local install?

## Sublime Text 2
# *remote_file
# *untar
# *directory /opt/sublimetext2
# *mv directory from /tmp to /opt/sublimetext2
# *create editor group
# *add user to editor group

## VirtualBox
# *remote_file for .asc key
# *command line to install key
# *rpm_package local_install?
# *vagrant packages - digitalocean, libvirt
# *add user to vboxusers

## Nvidia Driver
# * Use ELRepo
# * KMod
# * 32-bit compat x11-drv-nvidia

## Steam

## ClamAV GUI