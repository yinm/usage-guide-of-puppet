class msg_class ($message) {
  notify {$message:}
}
class {'msg_class':
  message => 123,
}