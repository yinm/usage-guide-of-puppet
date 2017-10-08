class a_class {
  notify {'this is class A':}
}

class b_class {
  notify {'this is Class B':}
}

class {'a_class':}
class {'b_class':
  require => Class['a_class'],
}