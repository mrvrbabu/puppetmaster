# Tomcat service control class file
class tomcatsingleinstance::service {
  service {'tomcat7':
  ensure  => running,
  }
}