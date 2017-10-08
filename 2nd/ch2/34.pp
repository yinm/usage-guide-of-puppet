$members = [
  'taro',
  'jiro',
  'hanako',
]

$filtered_list = $members.filter |$name| {$name =~ /ro$/}
notify {$filtered_list:}