group {'testgroup':
  ensure => 'present',
  gid => '1500',
}

user {'testuser':
  ensure => 'present',
  gid => 'testgroup',
  home => '/home/testuser',
  shell => '/bin/bash',
  uid => '1500',
  require => Group['testgroup'],
}