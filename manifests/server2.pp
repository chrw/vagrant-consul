class { 'consul':
  version     => '0.5.0',
  config_hash => {
	'bootstrap'     => false,
    'server'        => true,
    'datacenter'    => 'local',
	'encrypt'       => 'NDLIdEd6ryJCgNhPDG5TLQ==',
    'node_name'     => 'server2',
    'bind_addr'     => '192.168.0.11',
    'client_addr'   => '192.168.0.11',
    'data_dir'      => '/opt/consul',
    'log_level'     => 'INFO',
	'enable_syslog' => true,
    'start_join'    => [ '192.168.0.10', '192.168.0.12' ],
  }
}

