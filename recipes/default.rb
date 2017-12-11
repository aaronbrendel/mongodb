#
# Cookbook:: MongoDB
# Recipe:: default
#
# Copyright:: 2017, Aaron Brendel, All Rights Reserved. But I really don't care if you want to use this code for whatever purpose you see fit. Enjoy! 
#
#


# Add the MongoDB repository to Yum 
yum_repository 'MongoDB' do
	description "MongoDB Repository"
	baseurl "http://downloads-distro.mongodb.org/repo/redhat/os/x86_64/"
	gpgcheck false
	action :create
end

# Install the mongodb-org package from the repository added above.
package 'mongodb-org'

# Ensure that the services is started and will start upon reboot.
service 'mongod' do
	action [:enable, :start]
end
