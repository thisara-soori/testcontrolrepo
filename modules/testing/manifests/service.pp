class testing::service (
  String $srvicename = "httpd",
) {
  service { "${srvicename}":
    ensure => running,
    enable => true,
    hasrestart => true,
    hasstatus  => true,
    # pattern => 'name',
    require => Class ['testing::install'],
  }
}
