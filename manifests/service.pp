class knockd::service {
  service { $knockd::params::service_name:
    ensure    => running,
    hasstatus => false,
    enable    => true,
    status    => "ps -ef|grep '/usr/sbin/knockd'",
    require   => Class['knockd::config'],
  }
}
