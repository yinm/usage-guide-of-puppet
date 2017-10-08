$httpd_pkg = $::os['name'] ? {
  'RedHat' => 'httpd',
  'CentOS' => 'httpd',
  'Solaris' => 'SUNWapchr',
  defualt => 'apache',
}

notice ($httpd_pkg)