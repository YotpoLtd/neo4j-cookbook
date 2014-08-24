service "neo4j-service" do
	supports :status => true, :restart => true, :reload => true
	action [ :enable, :start ]
end
