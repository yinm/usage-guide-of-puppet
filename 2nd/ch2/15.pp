$user_name = 'gihyo'

user {$user_name:
  ensure => present,
  uid => 1200,
  gid => 1200,
  shell => '/bin/zsh',
}