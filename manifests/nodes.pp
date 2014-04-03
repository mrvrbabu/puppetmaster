node 'masterserver.homeoffice.net' {
  class { 'homeoffice_role_motd' :}
  }


node 'kvmnode6401.homeoffice.net' {
  class { 'homeoffice_role_motd' :}
  class { 'homeoffice_role_memcached' :}
  }

node 'kvmnode6402.homeoffice.net' {
  class { 'homeoffice_role_motd' :}
  class { 'homeoffice_role_httpd' :}
  $site_name = 'cats'
  $site_domain_name = 'cats.homeoffice.net'
  file { '/etc/httpd/conf.d/vhost.conf' :
  content => template("homeoffice_role_httpd/vhost.conf.erb"),
  notify  => Service['httpd'],
  }
  file { '/var/www/html/cats/index.html' :
  ensure => file,
  owner  => 'root',
  group  => 'root',
  mode   => '0644',
  content => template("homeoffice_role_httpd/index.html.erb"),
  }
  }


node 'kvmnode6403.homeoffice.net' {
  class { 'homeoffice_role_motd' :}
  class { 'homeoffice_role_httpd' :}
  $site_name = 'dogs'
  $site_domain_name = 'dogs.homeoffice.net'
  file { '/etc/httpd/conf.d/vhost.conf' :
  content => template("homeoffice_role_httpd/vhost.conf.erb"),
  notify  => Service['httpd'],
  }
  file { '/var/www/html/dogs/index.html' :
  ensure => file,
  owner  => 'root',
  group  => 'root',
  mode   => '0644',
  content => template("homeoffice_role_httpd/index.html.erb"),
  }
  }

node 'kvmnode6404.homeoffice.net' {
  class { 'homeoffice_role_motd' :}
  }

node 'kvmnode6405.homeoffice.net' {
  class { 'homeoffice_role_motd' :}
  }

