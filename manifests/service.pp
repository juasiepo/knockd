class knockd::service {
  service { $knockd::params::service_name:
    ensure      => running,
    hasstatus   => true,
    hasrestart  => true,
    enable      => true,
    require     => Class['knockd::config'],
  }
}
