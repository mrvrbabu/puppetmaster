#This puppet module is to deploy apache webserver on agent nodes
class homeoffice_role_httpd {
  package { 'httpd' :
  ensure => present,
  }
  file { '/etc/httpd/conf/httpd.conf' :
  ensure  => file,
  owner   => 'root',
  group   => 'root',
  mode    => '0644',
  require => Package['httpd'],
  source  => "puppet:///modules/${module_name}/httpd.conf",
  }
  service { 'httpd' :
  ensure  => running,
  require => [Package['httpd'],File['/etc/httpd/conf/httpd.conf']],
  }
  }
