# Class: tomcatsingleinstance
#
# This module manages tomcatsingleinstance
#
# Parameters: none
#
# Actions:
#
# Requires: see Modulefile
#
# Sample Usage:
#
class tomcatsingleinstance (
#  $java_version   =  hiera('tomcatsingleinstance::java_version')
) { 
  anchor {'tomcatsingleinstance::begin':}    ~>
  class  {'tomcatsingleinstance::repo' :}   ~>
  class  {'tomcatsingleinstance::package':} ~>
  class  {'tomcatsingleinstance::config' :} ~>
  class  {'tomcatsingleinstance::service':} ~>
  anchor { 'tomcatsingleinstance::end': }
}  

