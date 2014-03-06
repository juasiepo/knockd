# Class: knockd
#
# This module manages knockd
#
# Parameters: none
#
# Actions:
#
# Requires: see Modulefile
#
# Sample Usage:
#
class knockd (
  $package_name = $knockd::params::package_name,
  $service_config = $knockd::params::service_config,
  $service_name = $knockd::params::service_name,
  $sequence_open = $knockd::params::sequence_open,
  $sequence_close = $knockd::params::sequence_close,
  $port_to_manage = $knockd::params::port_to_manage,
  $interface_to_manage = $knockd::params::interface_to_manage,
  $command_timeout = $knockd::params::command_timeout,
  $prepend_rule = $knockd::params::prepend_rule,
) inherits knockd::params {
  anchor {'knockd::start':}->
  class {'knockd::package':}->
  class {'knockd::config':}->
  class {'knockd::service':}->
  anchor {'knockd::stop':}
}
