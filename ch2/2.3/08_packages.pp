$packages = [
  'git',
  'gcc',
  'make',
  'libtool',
]

package {$packages:
  ensure => installed,
}