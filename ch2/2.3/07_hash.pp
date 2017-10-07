$uid_map = {
  'gihyo' => 1200,
  'webdb' => 1201,
}

notify {String($uid_map['gihyo']):}
notify {String($uid_map['webdb']):}