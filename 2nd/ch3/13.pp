class system_user (String $username) {
  user {$username:
    ensure => present,
    shell => '/bin/bash',
    managehome => true,
  }

  file {'create_profile':
    ensure => present,
    path => "/home/${username}/.bash_profile",
    content => 'export PATH=/bin:/usr/bin',
    require => User[$username],
  }
}

class {'system_user':
  username => 'gihyo',
}