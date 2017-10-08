$members = [
  'taro',
  'jiro',
  'hanako'
]

$msg_list = $members.map |$name| { "this is ${name}" }
notify {$msg_list:}