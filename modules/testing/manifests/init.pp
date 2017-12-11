class testing (
Integer  $httpdPort = 90,
) {
  # resources
  include testing::install
  include testing::service
  include testing::configuration
}
