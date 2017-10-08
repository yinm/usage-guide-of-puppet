class a_class {
  notify {'this is Class A':}
}

class b_class {
  notify {'this is Class B':}
}

include a_class
include b_class

Class['a_class'] -> Class['b_class']