class tomcat7single::installpackage {
  package { 'java-1.7.0-openjdk':
      ensure => latest,
    }
    package { 'java-1.7.0-openjdk-devel':
      ensure => latest,
      require => Package['java-1.7.0-openjdk'],
    }
    package { 'tomcat7':
      ensure => installed,
      require => [Package['java-1.7.0-openjdk'], Yumrepo['jpackage']],
    }
  
}
