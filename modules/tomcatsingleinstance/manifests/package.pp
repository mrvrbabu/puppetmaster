#Manifest to provide package details
class tomcatsingleinstance::package {
  package {'java':
    ensure    =>  latest,
 }
 
  package {'tomcat7.noarch' :
    ensure    => installed,
  }
}