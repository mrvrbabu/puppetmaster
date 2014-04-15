#This module is to install and configure dns on master server
class homeoffice_role_bind {
  package { 'bind-chroot':
    ensure => present,
  }
  file { '/etc/named.conf':
    ensure  => file,
    owner   => 'named',
    group   => 'named',
    mode    => '0640',
    source  => "puppet:///module/${module_name}/named.conf",
    require => Package['bind-chroot'],
    }

  file { '/etc/named.rfc1912.zones':
    ensure  => file,
    owner   => 'named',
    group   => 'named',
    mode    => '0640',
    source  => "puppet:///modules/${module_name}/named.rfc1912.zones",
    require => Package['bind-chroot'],
    }

  file { '/var/named/forward.homeoffice.net':
    ensure  => file,
    owner   => 'named',
    group   => 'named',
    mode    => '0640',
    source  => "puppet:///modules/${module_name}/forward.homeoffice.net",
    require => Package['bind-chroot'],
    }

  file { '/var/named/reverse.homeoffice.net':
    ensure  => file,
    owner   => 'named',
    group   => 'named',
    mode    => '0640',
    source  => "puppet:///modules/${module_name}/reverse.homeoffice.net",
    require => Package['bind-chroot'],
    }

  file { '/var/named/reverse2.homeoffice.net':
    ensure  => file,
    owner   => 'named',
    group   => 'named',
    mode    => '0640',
    source  => "puppet:///modules/${module_name}/reverse2.homeoffice.net",
    require => Package['bind-chroot'],
    }

  service { 'named':
    ensure => enabled,
    }
}
