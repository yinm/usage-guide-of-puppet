class ntp::config {
  file {'/etc/ntp.conf':
    ensure => file,
    content => epp('ntp/ntp.conf.epp', {'server' => '192.168.1.1'}),
    require => Package['ntp'],
  }
}