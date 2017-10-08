class profile::webap::server (
) {
  class {'apche':}
  package {'httpd-devel':
    ensure => installed,
  }
  file {'/etc/httpd/conf.d/tomcat.conf':
    owner => 'root',
    group => 'root',
    mode => '0644',
    content => template('apache/tomcat.conf'),
  }

  tomcat::install {'/opt/tomcat':
    source_url => 'https://www.us.apache.org/dist/tomcat/tomcat-8/v8.5.12/bin/apache-tomcat-8.5.16.tar.gz',
  }
  tomcat::instance {'default':
    catalina_home => '/opt/tomcat',
  }
}