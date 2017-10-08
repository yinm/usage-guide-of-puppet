define system_user (String $username) {
  user {$username:
    ensure => present,
    shell => '/bin/bash',
    managehome => true,
  }
  file {"create_profile_${username}":
    ensure => present,
    path => "/home/${username}/.bash_profile",
    content => 'export PATH=/bin:/usr/bin',
    require => User[$username],
  }
}

system_user {'gihyo':
  username => 'gihyo',
}

system_user {'webdb':
  username => 'webdb',
}