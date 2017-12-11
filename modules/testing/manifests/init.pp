class testing (
Integer  $httpd_port = 90,
) {
  # resources
  include testing::install
  include testing::service
  include testing::configuration
}
