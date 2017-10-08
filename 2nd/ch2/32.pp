$members = [
  'taro',
  'jiro',
  'hanako',
]

$members.each |$name| {
  notify {"name is ${name}":}
}