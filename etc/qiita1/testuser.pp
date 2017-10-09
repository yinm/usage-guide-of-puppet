user {'testuser':
  ensure => 'present',
  gid => 'puppet',
  groups => ['wheel'],
  home => '/home/testuser',
  password => '!!',
  password_max_age => '99999',
  password_min_age => '0',
  shell => '/bin/bash',
  uid => '1500',
  managehome => true,
}