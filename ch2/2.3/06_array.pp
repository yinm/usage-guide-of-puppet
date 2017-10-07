$ips = [
  '192.168.0.1',
  '192.168.0.2',
  '192.168.0.3'
]

notify {$ips[0]:}
notify {$ips[1]:}
notify {$ips[2]:}