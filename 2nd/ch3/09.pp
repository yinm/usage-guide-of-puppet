class msg_class (String $str_num) {
  $num = (0 + $str_num) * 2
  $message = sprintf("%d", $num)
  notify {$message:}
}

class {'msg_class':
  str_num => '123',
}