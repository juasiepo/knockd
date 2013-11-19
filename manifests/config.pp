class knockd::config {
  file { $knockd::params::service_config:
  ensure  => present,
  owner   => 'root',
  group   => 'root',
  mode    => '0640',
  content => template('knockd/knockd.conf.erb'),
  require => Class['knockd::package'],
  notify  => Class['knockd::service'],
  }
  file { $knockd::params::service_default_config:
    ensure  => present,
    owner   => 'root',
    group   => 'root',
    mode    => '0644',
    content => template('knockd/knockd.erb'),
    require => Class['knockd::package'],
    notify  => Class['knockd::service'],
 }
}
