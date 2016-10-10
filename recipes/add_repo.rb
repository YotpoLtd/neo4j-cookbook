#
# Cookbook Name:: neo4j
# Recipe:: add_repo
#
# Copyright (C) 2016 Yotpo
#
# All rights, Reserved!
#

apt_repository 'neo4j' do
  uri          'http://debian.neo4j.org/repo'
  distribution 'stable/'
  key          'http://debian.neo4j.org/neotechnology.gpg.key'
end
