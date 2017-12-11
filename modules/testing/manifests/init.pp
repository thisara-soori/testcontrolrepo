class testing (
Integer  $httpd_port = 40,
) {
  # resources
  include testing::install
  include testing::service
  include testing::configuration
}
