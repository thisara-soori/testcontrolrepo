class review::motd {
  file { '/etc/motd':
    ensure  => file,
    mode    => '0644',
    content => epp(review/motd.epp),
  }
}
