#Manifest to provide package details
class tomcatsingleinstance::package {
  package {'java':
    ensure    =>  present,
 }
 
  package {'tomcat7.noarch' :
    ensure    => installed,
  }
}