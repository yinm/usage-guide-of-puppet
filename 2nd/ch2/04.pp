package {'ntp':
  ensure => installed,
}

file {'/etc/ntp.conf':
  ensure => file,
  content => @("NTPCONF"/L)
  driftfile /var/lib/ntp/ntp.conf
  server 192.168.1.1
  |NTPCONF
  ,
  require => Package['ntp'],
}

service {'ntpd':
  ensure => running,
  enable => true,
  hasrestart => true,
  subscribe => [
    Package['ntp'],
    File['/etc/ntp.conf'],
  ],
}