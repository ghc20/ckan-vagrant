#
# Vagrant Name:: CKAN
#
# Copyright 2012, Genhan Chen
#

Vagrant::Config.run do |config|
  config.vm.box = "precise32"
  config.vm.box_url = "http://files.vagrantup.com/precise32.box"
  config.vm.customize ["--cpus", 2, "--memory", 2000]
  
  config.vm.define :ckan do |ckan_config|
	ckan_config.vm.network :hostonly, "192.168.0.3"
	# config.vm.network :bridged
	ckan_config.vm.forward_port 80, 8882
	# config.vm.share_folder "ckan-data", "/home/vagrant/ckan", "../shared_data"
	
	ckan_config.vm.provision :chef_solo do |chef|
		chef.cookbooks_path = "cookbooks"
		chef.add_recipe "apt"	
		chef.add_recipe "git"		
		chef.add_recipe "openssl"		
		chef.add_recipe "build-essential"		
		chef.add_recipe "postgresql::server"
		chef.add_recipe "python"
		chef.add_recipe "java"
		chef.json = { :postgresql => { :password => { :postgres => "secret" } } }
	end
  end
end