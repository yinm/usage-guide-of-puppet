class test_class1 {
  notify {'test_class1':}
}

class test_class2 {
  contain test_class1
  notify {'test_class2':}
}
include test_class2

notify {'outside':
  before => Class['test_class2'],
}