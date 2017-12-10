class testing (
  $package_name
  ){
  # resources
  package { "${package_name}":
    ensure => installed,
  }
}
