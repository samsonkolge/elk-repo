#
# Cookbook Name:: elk-repo
# Recipe:: install_java
#
# Add the Oracle Java PPA to apt:

#	sudo add-apt-repository -y ppa:webupd8team/java
#
#Update your apt package database:

#	sudo apt-get update

#Install the latest stable version of Oracle Java 8 with this command (and accept the license agreement that pops up):

#	sudo apt-get -y install oracle-java8-installer
#Now that Java 8 is installed, let's install ElasticSearch.
# Copyright (c) 2016 The Authors, All Rights Reserved.

apt_repository 'Java Repo' do
  uri 'ppa:webupd8team/java'
end




# Update apt-get
  execute "apt-get update" do
    command 'apt-get update'
  end

# Install the latest stable version of Oracle Java 8
  execute "Install Latest Java version" do
    command 'apt-get -y install oracle-java8-installer'
  end
