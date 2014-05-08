# Tomcat service control class file
class tomcatsingleinstance::service {
  service {'tomcat':
  ensure  => running,
  }
}