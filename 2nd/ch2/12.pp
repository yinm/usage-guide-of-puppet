user {'gihyo':
  ensure => present,
  uid => '1003',
  gid => 'users',
  groups => ['wheel', 'root',],
  shell => '/bin/bash',
  home => '/home/gihyo',
  managehome => true,
}