#
# Cookbook Name:: loganov-client-workstation
# Recipe:: default
#
# Copyright 2014, Loganov Industries, LLC
#
# All rights reserved - Do Not Redistribute
#

# RedHat/Centos? Groups of Packages
include_recipe 'loganov-client-workstation::package-groups'

# Respositories & Keys
include_recipe 'loganov-client-workstation::repos'

# Packages to be installed by LWRP `rpm_package`
include_recipe 'loganov-client-workstation::packages'

# Packages from source, or 3rd Party Binaries
#include_recipe 'loganov-client-workstation::source'