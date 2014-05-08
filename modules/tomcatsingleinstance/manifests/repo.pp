class tomcatsingleinstance::repo {
  yumrepo { "Master_server":
    descr     => 'Master server repo',
    gpgcheck  => 0,
    enabled    => 1,
    baseurl   => 'ftp://ftp://192.168.2.10/pub/rhel64_64/Server', 
  }
}