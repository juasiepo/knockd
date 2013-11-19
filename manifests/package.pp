class knockd::package {
  package { $knockd::params::package_name:
    ensure => present,
  }
}
