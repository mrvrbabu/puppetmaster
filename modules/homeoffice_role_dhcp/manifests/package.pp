#Dhcp package class file

class homeoffice_role_dhcp::package {
  package { $homeoffice_role_dhcp::dhcp_packagename :
    ensure => $homeoffice_role_dhcp::dhcp_package,
  }
}
