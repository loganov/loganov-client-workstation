#
# Cookbook Name:: loganov-client-workstation
# Recipe:: repos
#
# Copyright 2014, Loganov Industries, LLC
#
# All rights reserved - Do Not Redistribute
#

# Repositories


## EPEL

### EPEL Base
yum_repository 'epel' do
	
end

### EPEL Testing
yum_repository 'epel-testing' do
	
end

## ELRepo
yum_repository 'elrepo' do
	
end

## RPMForge
yum_repository 'rpmforge' do
	
end

## RPMForge Testing
yum_repository 'rpmforge-testing' do
	
end

## Google Chrome
yum_repository 'google-chrome' do
	
end

## 32-Bit Compat Packages
yum_repository 'nux-desktop' do
	
end

## Steam RPM Repo
yum_repository 'steam_fedora19' do
	
end

# Keys

## Centos 7

## ELRepo

# ----

# Move rpmforge, and it's repo and mirror files into it's own cookbook?

#   epel-testing.repo   mirrors-rpmforge-extras   rpmforge.repo
#   elrepo.repo        google-chrome.repo  mirrors-rpmforge-testing  steam_fedora19.repo
#     epel.repo          mirrors-rpmforge    nux-dextop.repo