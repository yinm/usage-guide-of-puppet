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

class { 'testdirectory':
  testdir => '/tmp/testdir2',
}