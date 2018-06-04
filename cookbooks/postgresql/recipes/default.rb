#
# Cookbook:: postgresql
# Recipe:: default
#
# Copyright:: 2018, The Authors, All Rights Reserved.
#
package 'postgres' do
	notifies :run, 'execute[postgresql-init]'
end
execute 'postgresql-init' do
	command 'postgresql-setup initdb'
	action:nothing
end
service 'postgres' do
	action [:enable,:start]
end
