if $::is_virtual {
  package {'open-vm-tools':
    ensure => installed,
  }
}
else {
  package {'ntp':
    ensure => installed,
  }
}