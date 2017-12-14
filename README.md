# MongoDB

# On AWS Create RHEL server

# Login

# Install Chef
$  curl https://omnitruck.chef.io/install.sh | sudo bash -s -- -P chefdk -c stable -v 2.0.28

# Install VIM
$ sudo yum install vim -y

# Add line to bottom of /etcsudoers
$ sudo vi /etc/sudoers

		abrendel        ALL=(ALL)       NOPASSWD: ALL



# Add local account
$ sudo useradd abrendel
$ sudo passwd abrendel
$ sudo su - abrendel
$ mkdir ~/chef_repo


# Install Git
$ sudo yum install git -y

# Setup the cookbooks and clone them from github
$ mkdir cookbooks
$ mkdir cookbooks/mongodb
$ mkdir cookbooks/tomcat
$ cd ~/chef_repo/cookbooks/mongodb ; git clone https://github.com/aaronbrendel/mongodb.git .
$ cd ~/chef_repo/cookbooks/tomcat ; git clone https://github.com/aaronbrendel/tomcat.git .

# Execute the Mongo cookbook

# But first test to make sure it should not work
$ mongo 

# Lets get cookin'
$ sudo chef-client --local-mode --runlist 'recipe[mongodb]'

#Does it work now? It should!
$ mongo
