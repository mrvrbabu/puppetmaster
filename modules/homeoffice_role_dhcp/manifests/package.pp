#Dhcp package class file

class homeoffice_role_dhcp::package {
  package { 'dhcp':
    ensure => homeoffice_role_dhcp::dhcp_ensure,
  }
}
