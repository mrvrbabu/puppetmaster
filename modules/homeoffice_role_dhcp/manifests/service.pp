# Class file to control dhcpd serivce

class homeoffice_role_dhcp::service {
  service { $homeoffice_role_dhcp::dhcp_service :
    ensure => $homeoffice_role_dhcp::dhcp_ensure
  }
}
