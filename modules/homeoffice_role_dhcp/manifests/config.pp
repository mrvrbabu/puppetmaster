# Class file to provide dhcpd.conf file 

class homeoffice_role_dhcp::config {
  file { '/etc/dhcp/dhcpd.conf':
    ensure  =>  file,
    owner   =>  'root',
    group   =>  'root',
    mode    =>  '0644',
    source  =>  "puppet:///modules/${module_name}/dhcpd.conf",
  }
}

