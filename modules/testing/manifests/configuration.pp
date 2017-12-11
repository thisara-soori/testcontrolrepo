class testing::configuration (
Integer  $httpdPort
) {
  # resources
  file { '/etc/httpd/conf/httpd.conf':
    ensure => file,
    mode => '0644',
    content => epp('testing/httpd.conf.epp',90),
    #content => template('httpd/httpd.conf.erb'),
    #require => ['httpd::install'],
    notify => Class['testing::service'],
  }

}
