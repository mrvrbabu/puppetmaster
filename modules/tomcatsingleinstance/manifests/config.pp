# Config file for tomcage application
class tomcatsingleinstance::config {
  file {'/tmp/test.txt' :
    ensure  => 'file',
    content => "Hello world from tomcat",
  }
}