$param1 = 'template test'

file {'/tmp/template_test.txt':
  ensure => file,
  content => epp('/var/usage-guide-of-puppet/2nd/ch2/test.epp', {
    param1 => $param1,
  }),
}