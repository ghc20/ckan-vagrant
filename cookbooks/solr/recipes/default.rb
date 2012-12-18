#
# Cookbook Name:: solr
# Recipe:: default
#
# Copyright 2012, Genhan Chen
#
# Cookbooks:
# java
#
# Summary:
# This recipe is only to set up a single Solr instance

case node[:platform]
when "debian","ubuntu"
	# Install solr-jetty 
	package "solr-jetty" do
			action :install
	end

	# Delete the original jetty configuration file
	if File.exists?("/etc/default/jetty")
		file "/etc/default/jetty" do
			action :delete
		end
	end
	
	# Add the modified jetty configuration file
	# Then start jetty service
	service "jetty"
	cookbook_file "/etc/default/jetty" do
		source "jetty"
		notifies :start, "service[jetty]"
	end
	

else
	log "Error: Cannot install solr-jetty on this OS"
	log "Warning: This recipe only works on Debian or Ubuntu"
end





