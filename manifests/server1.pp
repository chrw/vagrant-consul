class { 'consul':
  version     => '0.5.0',
  config_hash => {
	'bootstrap'     => true,
    'server'        => true,
    'datacenter'    => 'local',
	'encrypt'       => 'NDLIdEd6ryJCgNhPDG5TLQ==',
    'node_name'     => 'server1',
    'bind_addr'     => '192.168.0.10',
    'client_addr'   => '192.168.0.10',
    'data_dir'      => '/opt/consul',
    'ui_dir'        => '/opt/consul/ui',
    'log_level'     => 'INFO',
	'enable_syslog' => true,
    'start_join'    => [ '192.168.0.11', '192.168.0.12' ],
  }
}

class { 'nginx': }

nginx::resource::vhost { 'consului':
  proxy       => 'http://192.168.0.10:8500',
  server_name => [ 'localhost' ],
}
