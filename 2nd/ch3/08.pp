class msg_class (String $str_num) {
  $num = 0 + $str_num
  $message = sprintf("%d", $num)
  notify {$message:}
}

class {'msg_class': str_num => '123',}