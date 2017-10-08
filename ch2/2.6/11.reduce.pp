$members = {
  'taro' => 'male',
  'jiro' => 'male',
  'hanako' => 'female'
}

$cnt = $members.reduce([0, 0]) |$memo, $value| {
  if ($value[1] == 'male') {
    $m = $memo[0] + 1
    $f = $memo[1]
  }
  elsif ($value[1] == 'female') {
    $m = $memo[0]
    $f = $memo[1] + 1
  }
  [$m, $f]
}

notify { "${cnt[0]} male member(s), ${cnt[1]} female member(s)": }