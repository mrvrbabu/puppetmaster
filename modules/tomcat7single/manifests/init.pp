# Class: tomcat7single
#
# This module manages tomcat7single
#
# Parameters: none
#
# Actions:
#
# Requires: see Modulefile
#
# Sample Usage:
#
class tomcat7single {
  class { 'tomcat7single::repo' :}
  class { 'tomcat7single::installpackage' :}
    
}
