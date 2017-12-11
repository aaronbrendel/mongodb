#
# Cookbook:: MongoDB
# Recipe:: default
#
# Copyright:: 2017, The Authors, All Rights Reserved.

yum_repository 'MongoDB' do
	description "MongoDB Repository"
	baseurl "http://downloads-distro.mongodb.org/repo/redhat/os/x86_64/"
	gpgcheck false
	action :create
end

package 'mongodb-org'

service 'mongod' do
	action [:enable, :start]
end
