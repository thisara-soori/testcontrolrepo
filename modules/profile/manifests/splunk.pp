class profile::splunk {
  class { '::splunk':
    logging_server => lookup('splunk_server'),
  }
}
