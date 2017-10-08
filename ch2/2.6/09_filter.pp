$members = {
  'taro' => 'male',
  'jiro' => 'male',
  'hanako' => 'female'
}

$filtered_list = $members.filter |$name| { $name[1] == 'male' }
notify { keys($filtered_list): }