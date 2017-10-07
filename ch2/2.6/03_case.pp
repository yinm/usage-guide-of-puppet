case $::os['name'] {
  'RedHat', 'CentOS': {
    package {'httpd':
      ensure => installed,
    }
  }
  default: {
    fail('unknown environment')
  }
}