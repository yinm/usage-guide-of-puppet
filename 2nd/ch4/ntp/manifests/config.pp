class ntp::config {
  file {'/etc/ntp.conf':
    ensure => file,
    source => puppet:///module/ntp/ntp.conf,
    require => Package['ntp'],
  }
}