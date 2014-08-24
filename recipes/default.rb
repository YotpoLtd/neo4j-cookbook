#
# Cookbook Name:: neo4j
# Recipe:: default
#
# Copyright (C) 2014 Yotpo
#
# All rights, Reserved!
#
include_recipe "neo4j::add_repo"
include_recipe "neo4j::install"
include_recipe "neo4j::config"
include_recipe "neo4j::service"

