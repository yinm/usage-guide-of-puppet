$param1 = 'template test'

file {'/tmp/template_test.txt':
  ensure => file,
  content => template('/var/usage-guide-of-puppet/2nd/ch2/test.erb')
}