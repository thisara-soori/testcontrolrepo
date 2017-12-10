class testing::configuration (
Int $httpdPort
) {
  # resources
  file { '/etc/httpd/conf/httpd.conf':
    ensure => file,
    mode => '0644',
    content => template('httpd/httpd.conf.erb'),
    #content => template('httpd/httpd.conf.erb'),
    #require => ['httpd::install'],
    notify => Class ['httpd::httpdservice'],
  }

}
