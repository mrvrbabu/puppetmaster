# This puppet module is to add user 'rbabu' on all nodes
class homeoffice_role_rbabu {
  user { 'rbabu':
  ensure           => 'present',
  gid              => '500',
  home             => '/home/rbabu',
  password         => '$6$KTPI13n0$yDKR1cBJBdNfJXJiMpkbg7cyB.Y.U3AiBB2hLNsvCRh4S3uabXmtGG/.cKwahYuXNOTHMr0c/J4XjXVODzWh2.',
  password_max_age => '99999',
  password_min_age => '0',
  shell            => '/bin/bash',
  uid              => '500',
  }
}
