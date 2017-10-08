class msg_class (String $message) {
  notify {$message:}
}

class {'msg_class':
  message => 123,
}