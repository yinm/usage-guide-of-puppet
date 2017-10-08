cron {'disk_check':
  command => '/usr/bin/df -h',
  ensure => present,
  minute => [0, 10, 20, 30, 40, 50],
  hour => '*',
  monthday => '*',
  month => '*',
  weekday => [1, 2, 3, 4, 5],
}