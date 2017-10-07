package {'ntp':
  ensure => installed,
}
->
file {'/etc/ntp.conf':
  ensure => file,
  content => @("NTPCONF"/L)
  driftfile /var/lib/ntp/ntp.drift
  server 192.168.1.1
  |NTPCONF
  ,
}
~>
service {'ntpd':
  ensure => running,
  enable => true,
  hasrestart => true,
}