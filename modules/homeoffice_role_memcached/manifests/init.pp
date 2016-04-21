#This module is to install and control the memcached service
class homeoffice_role_memcached {
  package { 'memcached':
  ensure => installed,
  }
  file { '/etc/memcached.conf':
  ensure  => file,
  source  => "puppet:///modules/${module_name}/memcached.conf",
  owner   => 'root',
  group   => 'root',
  mode    => '0644',
  require => Package['memcached'],
  }
  service { 'memcached':
  ensure  => stopped,
  require => File['/etc/memcached.conf'],
  }
  }
