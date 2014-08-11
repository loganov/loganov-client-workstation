#
# Cookbook Name:: loganov-client-workstation
# Recipe:: packages
#
# Copyright 2014, Loganov Industries, LLC
#
# All rights reserved - Do Not Redistribute
#

# Packages

# Clam A/V
package 'clamav'

## Enable Partitioning for GPT Partition Table
package 'gdisk'

## Git
# `git config --global user.name "Your Name"`
# `git config --global user.email you@example.com`
package 'git'

## MDADM RAID Tools
package 'mdadm'

# if repo is present install package -> Find a check for this. Else throw error.
#package 'vlc'

