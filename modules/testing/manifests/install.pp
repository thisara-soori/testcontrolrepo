class testing::install (
String $package_name = "httpd",
){
  package { "${package_name}":
    ensure => installed,
  }
}
