service {'httpd':
  ensure => 'running',
  enable => 'true',
  subscribe => File['/etc/httpd/conf/httpd.conf'],
}

file {'/etc/httpd/conf/httpd.conf':
  ensure => 'file',
  mode => '644',
  owner => 'root',
  group => 'root',
}