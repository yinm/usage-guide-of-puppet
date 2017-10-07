exec {'touch ${ENV1} ${ENV2}':
  path => '/usr/bin',
  creates => '/opt/somepkg',
  unless => 'ls /usr/bin/somepkg_cmd',
  environment => [
    "ENV1=testfile1",
    "ENV2=testfile2",
  ],
}