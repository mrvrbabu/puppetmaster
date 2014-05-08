#Manifest to provide package details
class tomcatsingleinstance::package {
  package {'java-1.7.0-openjdk.x86_64':
    ensure    =>  installed,
 }
 
  package {'tomcat7.noarch' :
    ensure    => installed,
  }
}