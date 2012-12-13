ckan-vagrant
============

A Vagrant VM for CKAN development environment

# Basebox:
precise32
http://files.vagrantup.com/precise32.box

# Cookbooks in Opscode repository:
[apt](https://github.com/opscode-cookbooks/apt.git)
[build-essential](https://github.com/opscode-cookbooks/build-essential.git)
[git](https://github.com/opscode-cookbooks/git.git)
[openssl](https://github.com/opscode-cookbooks/openssl.git)
[postgresql](https://github.com/opscode-cookbooks/postgresql.git)
[python](https://github.com/opscode-cookbooks/python.git)
[yum](https://github.com/opscode-cookbooks/yum.git)
[java](https://github.com/opscode-cookbooks/java.git)

If 'java' does not work, modify Line 30 in 'recipes/openjdk.rb':
'''
-    "default" => ["openjdk#{jdk_version}","default-jre-headless"]	
+    "default" => ["openjdk-#{jdk_version}-jdk","default-jre-headless"]
'''



