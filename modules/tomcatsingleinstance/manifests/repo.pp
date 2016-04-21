class tomcatsingleinstance::repo {
  yumrepo { "Master_server":
    descr     => 'Master server repo',
    gpgcheck  => 0,
    enabled    => 1,
    baseurl   => 'ftp://192.168.2.10/pub/rhel64_64/Server', 
  }

  yumrepo { "jpackage":
    descr     => 'JPackage project',
    gpgcheck  => 0,
    enabled   => 1,
    baseurl   => 'ftp://jpackage.hmdc.harvard.edu/JPackage/6.0/generic/free/', 
  }
}