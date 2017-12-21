class role::logserver {
  include profiles::splunk
  include profiles::base
  include profile::splunk::server
  include profile::nagios
}
