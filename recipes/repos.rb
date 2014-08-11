#
# Cookbook Name:: loganov-client-workstation
# Recipe:: repos
#
# Copyright 2014, Loganov Industries, LLC
#
# All rights reserved - Do Not Redistribute
#

# Repositories

## Keys

### Centos 7

### EPEL 7
# Move this to remote_file instead of cookbook_file.
cookbook_file 'RPM-GPG-KEY-EPEL-7' do
    path   '/etc/pki/rpm-gpg/RPM-GPG-KEY-EPEL-7'
    owner  'root'
    group  'root'
    mode   '0644'
    action :create
end

### ELRepo
cookbook_file 'RPM-GPG-KEY-elrepo.org' do
    path   '/etc/pki/rpm-gpg/RPM-GPG-KEY-elrepo.org'
    owner  'root'
    group  'root'
    mode   '0644'
    action :create
end

### RPM Forge
cookbook_file 'RPM-GPG-KEY-rpmforge-dag' do
    path   '/etc/pki/rpm-gpg/RPM-GPG-KEY-rpmforge-dag'
    owner  'root'
    group  'root'
    mode   '0644'
    action :create
end

### Nux Desktop
cookbook_file 'RPM-GPG-KEY-nux.ro' do
    path   '/etc/pki/rpm-gpg/RPM-GPG-KEY-nux.ro'
    owner  'root'
    group  'root'
    mode   '0644'
    action :create
end

## Yum

### EPEL Base
yum_repository 'epel' do
    description 'Extra Packages for Enterprise Linux 7 - $basearch'
    mirrorlist 'https://mirrors.fedoraproject.org/metalink?repo=epel-7&arch=$basearch'
    #baseurl ''
    gpgcheck false
    gpgkey 'file:///etc/pki/rpm-gpg/RPM-GPG-KEY-EPEL-7'
    sslverify false
    failovermethod 'priority'
    enabled true
    action :create
end

### EPEL Testing
#yum_repository 'epel-testing' do
    
#end

### ELRepo
yum_repository 'elrepo' do
    description 'Extra Packages for Enterprise Linux 7 - $basearch'
    mirrorlist 'http://mirrors.elrepo.org/mirrors-elrepo.el7'
    #baseurl ''
    gpgcheck false
    gpgkey 'file:///etc/pki/rpm-gpg/RPM-GPG-KEY-elrepo.org'
    sslverify false
    failovermethod 'priority'
    enabled true
    action :create  
end

### RPMForge
yum_repository 'rpmforge' do
    description 'RHEL $releasever - RPMforge.net - dag'
    baseurl 'http://apt.sw.be/redhat/el6/en/$basearch/rpmforge'
    mirrorlist 'http://mirrorlist.repoforge.org/el6/mirrors-rpmforge'
    gpgcheck false
    gpgkey 'file:///etc/pki/rpm-gpg/RPM-GPG-KEY-rpmforge-dag'
    sslverify false
    enabled true
    action :create
end

## RPMForge Testing
#yum_repository 'rpmforge-testing' do
    
#end

## Google Chrome
yum_repository 'google-chrome' do
    description 'google-chrome'
    baseurl 'http://dl.google.com/linux/chrome/rpm/stable/x86_64'
    #mirrolist ''
    gpgcheck true
    sslverify false
    enabled true   
    action :create
end

## Nux Desktop
yum_repository 'nux-desktop'
    description 'Nux.Ro RPMs for general desktop use'
    baseurl 'http://li.nux.ro/download/nux/dextop/el7/$basearch/ http://mirror.li.nux.ro/li.nux.ro/nux/dextop/el7/$basearch/'
    #mirrolist ''
    enabled true
    gpgcheck true
    gpgkey='file:///etc/pki/rpm-gpg/RPM-GPG-KEY-nux.ro'
end

## Nux Desktop Testing
yum_repository 'nux-desktop-testing' do
    description 'Nux.Ro RPMs for general desktop use - testing'
    baseurl 'http://li.nux.ro/download/nux/dextop-testing/el7/$basearch/'
    #mirrolist ''
    enabled false
    gpgcheck true
    gpgkey 'file:///etc/pki/rpm-gpg/RPM-GPG-KEY-nux.ro'
end

## 32-Bit Compat Packages
#yum_repository 'nux-desktop' do
    
#end

## Steam RPM Repo
#yum_repository 'steam_fedora19' do
    
#end

# ----

# Move rpmforge, and it's repo and mirror files into it's own cookbook?

#   epel-testing.repo   mirrors-rpmforge-extras   rpmforge.repo
#   elrepo.repo        google-chrome.repo  mirrors-rpmforge-testing  steam_fedora19.repo
#     epel.repo          mirrors-rpmforge    nux-dextop.repo

