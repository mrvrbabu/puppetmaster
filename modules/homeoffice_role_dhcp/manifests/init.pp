#This module is to install dhcpd server on master server
class homeoffice_role_dhcp (
    $dhcp_packagename   = hiera('homeoffice_role_dhcp_dhcp_packagename'),
    $dhcp_ensure        = hiera('homeoffice_role_dhcp_dhcp_ensure'),
    $dhcp_service       = hiera('homeoffice_role_dhcp_dhcp_service'),
    ) {
	anchor { 'homeoffice_role_dhcp::begin': } ~>
	class  { 'homeoffice_role_dhcp::package': } ~>
	class  { 'homeoffice_role_dhcp::config': } ~>
	class  { 'homeoffice_role_dhcp::service': } ~>
	anchor { 'homeoffice_role_dhcp::end': }
      }


