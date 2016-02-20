#
# Cookbook Name:: sublime_text
# Attributes:: default
#
# Copyright (C) 2016 Jason Blalock
#
# MIT License
#

default['nodejs']['version'] = 'node_4.x'
default['nodejs']['platform']['distro'] = 'trusty'
default['nodejs']['repository']['uri'] = "https://deb.nodesource.com/#{node['nodejs']['version']}"
default['nodejs']['repository']['key'] = 'https://deb.nodesource.com/gpgkey/nodesource.gpg.key'
