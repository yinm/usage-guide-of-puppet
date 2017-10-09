class testdirectory (
  $testdir = '/tmp/testdir',
) {
  file { $testdir:
    ensure => directory,
    mode => '755',
    owner => 'root',
    group => 'root',
  }
}

node 'vagrant-centos65' {
  class { 'testdirectory':
    testdir => '/tmp/testdir_mynode',
  }
}

node default {
  class { 'testdirectory':
    testdir => '/tmp/testdir_othernode',
  }
}