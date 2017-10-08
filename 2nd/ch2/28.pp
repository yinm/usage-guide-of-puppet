unless $::is_virtual {
  package {'ntp':
    ensure => installed,
  }
}
else {
  package {'open-vm-tools':
    ensure => installed,
  }
}