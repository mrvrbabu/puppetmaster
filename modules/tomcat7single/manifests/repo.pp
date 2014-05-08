class tomcat7single::repo {
  yumrepo { "Master" : 
    descr    =>    "Master repository",
    baseurl  =>    "ftp://192.168.2.10/pub/rhel64_64/Server",
    enabled  => 1,
    gpgcheck => 1,
  }
  
  }
