$param1 = 'template test'

file {"/tmp/template_test.txt":
  ensure => file,
  content => template('/var/usage-guide-of-puppet/ch2/2.8/01_erb/test.erb'),
}