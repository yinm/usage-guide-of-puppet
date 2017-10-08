class test {
  $value = 'in test class'
}
include test

notify {$test::value:}