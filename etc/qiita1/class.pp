class testaccount {
  group {'testgroup':
    ensure => 'present',
    gid => '1500',
    before => User['testuser'],
  }

  user {'testuser':
    ensure => 'present',
    gid => 'testgroup',
    home => '/home/testuser',
    shell => '/bin/bash',
    uid => '1500',
  }
}

include testaccount