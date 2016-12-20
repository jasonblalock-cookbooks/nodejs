#
# Cookbook Name:: nodejs
# Attributes:: default
#
# Copyright (C) 2016 Jason Blalock
#
# MIT License
#

distro_name = case node['platform_version']
when '14.04'
  'trusty'
when '16.04'
  'xenial'
when '16.10'
  'yakkety'
end

default['nodejs']['version'] = 'node_4.x'
default['nodejs']['platform']['distro'] = distro_name
default['nodejs']['repository']['uri'] = "https://deb.nodesource.com/#{node['nodejs']['version']}"
default['nodejs']['repository']['key'] = 'https://deb.nodesource.com/gpgkey/nodesource.gpg.key'
