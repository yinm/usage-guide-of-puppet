class ntp::service {
  service {'ntpd':
    ensure => running,
    enable => true,
    hasrestart => true,
    subscribe => File['/etc/ntp.conf'],
  }
}