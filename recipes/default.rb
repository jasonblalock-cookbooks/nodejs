#
# Cookbook Name:: nodejs
# Recipe:: default
#
# Copyright (c) 2016 Jason Blalock, All Rights Reserved.

include_recipe 'apt'

apt_repository 'node.js' do
  uri 'ppa:chris-lea/node.js'
  action :remove
end

Dir['/etc/apt/sources.list.d/chris-lea-node_js-*.list'].each do |f|
  file::File.expand_path(path) do
    action :delete
  end
end

apt_repository "nodesource-#{node['nodejs']['version']['generation']}" do
  uri node['nodejs']['repository']['uri']
  components ['main']
  distribution node['nodejs']['platform']['distro']
  key node['nodejs']['repository']['key']
  action :add
  deb_src true
end

package 'nodejs'
