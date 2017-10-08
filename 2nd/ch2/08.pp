service {'ntpd':
  ensure => running,
  enable => true,
  hasrestart => true,
  subscribe => [
    Package['ntp'],
    File['/etc/ntp.conf'],
  ],
}