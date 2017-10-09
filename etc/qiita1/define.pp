define definedirectory (
  $testdir = '/tmp/testdir',
) {
  file { $testdir:
    ensure => directory,
    mode => '755',
    owner => 'root',
    group => 'root',
  }
}

definedirectory { 'define_testdir2':
  testdir => '/tmp/testdir2',
}

definedirectory { 'define_testdir3':
  testdir => '/tmp/testdir3',
}

