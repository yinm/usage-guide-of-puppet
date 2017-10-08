class ntp {
  include ntp::install
  include ntp::config
  include ntp::service

  Class['ntp::install']
  -> Class['ntp::config']
  -> Class['ntp::service']
}
