#
# Cookbook Name:: loganov-client-workstation
# Recipe:: default
#
# Copyright 2014, Loganov Industries, LLC
#
# All rights reserved - Do Not Redistribute
#

# RedHat/Centos? Groups of Packages
include_recipe 'package-groups'

# Respositories & Keys
include_recipe 'repos'

# Packages to be installed by LWRP `rpm_package`
include_recipe 'packages'

# Packages from source, or 3rd Party Binaries
include_recipe 'source'