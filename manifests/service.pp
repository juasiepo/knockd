class knockd::service {
  service { $knockd::params::service_name:
    ensure    => running,
    hasstatus => false,
    enable    => true,
    require   => Class['knockd::config'],
  }
}
