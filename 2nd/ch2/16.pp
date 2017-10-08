$ip = '192.168.1.100'

file {'/etc/dnsmasq.d/001-my-lanip.conf':
  ensure => file,
  content => "address=/${ip}",
}