#Manifest to provide package details
class tomcatsingleinstance::package {
  package {'java':
    ensure    =>  installed,
 }
 
  package {'tomcat7.noarch' :
    ensure    => installed,
  }
}