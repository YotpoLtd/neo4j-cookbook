template "/etc/neo4j/neo4j-server.properties" do
	source "neo4j-server.properties.erb"
	owner "root"
	group "root"
	mode "0644"
	notifies :restart, "service[neo4j-service]"
end

#Know Your Limits
template "/etc/security/limits.d/neo4j.conf" do
  source "neo4j-limits.conf.erb"
  mode  0644
  notifies :restart, 'service[neo4j-service]'
end
#TODO: take it out to common when we'll grouw up =)
ruby_block "make sure pam_limits.so is required" do
  block do
    fe = Chef::Util::FileEdit.new("/etc/pam.d/su")
    fe.search_file_replace_line(/# session    required   pam_limits.so/, "session    required   pam_limits.so")
    fe.write_file
  end
  notifies :restart, 'service[neo4j-service]'
end	
