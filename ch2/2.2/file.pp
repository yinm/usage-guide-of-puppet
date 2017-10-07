file {'/tmp/testfile.txt':
  ensure => file,
  content => 'this is a test file',
  owner => 'root',
  group => 'users',
  mode => '0640',
}