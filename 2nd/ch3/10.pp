class base_class {
  file {'/tmp/test.txt':
    ensure => present,
    content => 'base',
  }
}

class child_class inherits base_class {
  File['/tmp/test.txt'] {
    ensure => present,
    content => 'child',
  }
}

include child_class