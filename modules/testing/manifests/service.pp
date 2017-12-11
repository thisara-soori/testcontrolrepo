class testing::service (
  String $srvicename = "httpd",
) {
  service { "${srvicename}":
    ensure     => running,
    enable     => true,
    hasrestart => true,
    hasstatus  => true,
    require    => Class ['testing::install'],
  }
}
