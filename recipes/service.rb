#
# Cookbook Name:: neo4j
# Recipe:: service
#
# Copyright (C) 2016 Yotpo
#
# All rights, Reserved!
#

service "neo4j" do
	supports :status => true, :restart => true, :reload => true
	action [ :enable, :start ]
end
