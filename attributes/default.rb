default[:neo4j] = {
	:address => "0.0.0.0",
	:limits => {
	    :memlock => 'unlimited',
	    :nofile  => 48000
  }
}