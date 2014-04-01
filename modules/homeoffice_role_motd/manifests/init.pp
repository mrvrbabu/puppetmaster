# Class to display MOTD message during login
class homeoffice_role_motd {
  file { '/etc/motd':
  ensure => file,
  owner  => 'root',
  group  => 'root',
  mode   => '0644',
  source => "puppet:///modules/${module_name}/motd",
  }
  }

