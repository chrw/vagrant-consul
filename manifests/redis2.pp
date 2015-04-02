class { 'consul':
  version     => '0.5.0',
  config_hash => {
    'server'        => false,
    'datacenter'    => 'local',
    'encrypt'       => 'NDLIdEd6ryJCgNhPDG5TLQ==',
    'node_name'     => 'redis2',
    'bind_addr'     => '192.168.0.101',
    'client_addr'   => '192.168.0.101',
    'data_dir'      => '/opt/consul',
    'log_level'     => 'INFO',
    'enable_syslog' => true,
	'start_join'    => [ '192.168.0.10', '192.168.0.11', '192.168.0.12' ],
  }
}

consul::service { 'redis':
  tags           => ['master'],
  port           => 6379,
  check_script   => 'redis-cli -p 6379 set consul-test "$(date)" || exit 2',
  check_interval => '120s',
}

exec { "apt-get update":
  command => "/usr/bin/apt-get update",
} ->
class { 'redis::install': }

redis::server {
  'instance1':
    redis_memory    => '128m',
    redis_ip        => '0.0.0.0',
    redis_port      => 6379,
    redis_mempolicy => 'allkeys-lru',
    redis_timeout   => 0,
    redis_nr_dbs    => 16,
    redis_loglevel  => 'warning',
    running         => true,
    enabled         => true
}

