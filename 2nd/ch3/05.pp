class msg_class ($message = 'default message') {
  notify {$message:}
}

include msg_class