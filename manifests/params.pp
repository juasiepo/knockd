class knockd::params {
  $package_name = 'knockd'
  $service_config = '/etc/knockd.conf'
  $service_name = 'knockd'
  $sequence_open = '7000,8000,9000' # example 2222:udp,3333:tcp,4444:udp
  $sequence_close = '9000,8000,7000'
  $port_to_manage = '22'
  $interface_to_manage = 'eth0'
  $service_default_config = '/etc/default/knockd'
  $command_timeout = undef
  $prepend_rule = false
}
