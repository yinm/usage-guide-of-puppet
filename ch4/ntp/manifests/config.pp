class ntp::config {
  file {'/etc/ntp.conf':
    ensure => file,
    content => @("NTPCONF"/L)
    driftfile /var/lib/ntp/ntp.drift
    server 192.168.1.1
    |NTPCONF
    ,
    require => Package['ntp'],
  }
}