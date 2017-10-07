$httpd_pkg = $::os['name'] ? {
  'RedHat' => 'httpd',
  'CentOS' => 'httpd',
  'Solaris' => 'SUMWapchr',
  default => 'apache',
}

notice ($httpd_pkg)