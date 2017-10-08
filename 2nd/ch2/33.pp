$members = [
  'taro', '1',
  'jiro', '2',
  'hanako', '3',
]

$members.slice(2) |$name, $number| {
  notify {"${name}'s number is ${number}":}
}