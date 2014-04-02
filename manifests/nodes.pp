node 'masterserver.homeoffice.net' {
  class { 'homeoffice_role_motd' :}
  }


node 'kvmnode6401.homeoffice.net' {
  class { 'homeoffice_role_motd' :}
  class { 'homeoffice_role_memcached' :}
  }

node 'kvmnode6402.homeoffice.net' {
  class { 'homeoffice_role_motd' :}
  }

node 'kvmnode6403.homeoffice.net' {
  class { 'homeoffice_role_motd' :}
  }

node 'kvmnode6404.homeoffice.net' {
  class { 'homeoffice_role_motd' :}
  }

node 'kvmnode6405.homeoffice.net' {
  class { 'homeoffice_role_motd' :}
  }

