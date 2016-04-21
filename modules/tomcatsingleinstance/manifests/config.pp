# Config file for tomcage application
class tomcatsingleinstance::config {
  file {'/tmp/test.txt' :
    ensure  => 'file',
    content => "Hello world from tomcat",
  }
  file {'/usr/share/tomcat7/webapps/jenkins.war' :
    ensure  => present,
    source  => "puppet:///modules/${module_name}/jenkins.war",
    }
  }