#Install java package
class tomcat7single::installpackage {
  #package { 'java-1.7.0-openjdk.x86_64 ':
  package { 'java* ':  
      ensure => latest,
    }
    #package { 'java-1.7.0-openjdk-devel.x86_64 ':
    #package { 'java-1.7.0-openjdk-devel.x86_64 ':
    # ensure => installed,
    # require => Package['java-1.7.0-openjdk.x86_64 '],
    #}
  #  package { 'tomcat7':
  #    ensure => installed,
  #    require => [Package['java-1.7.0-openjdk'], Yumrepo['jpackage']],
  #  }
  
}
