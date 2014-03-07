knockd
============

Overview
--------
This is the knockd module.

It installs and configures knockd (a port knocking software).

For the moment only tested on debian wheezy (stable 7.2). It should work on jessie too.

Usage
-----

Example:

Basic usage :

    include knockd

This will use the default values set on params.pp

Advanced example :

    class { 'knockd':
      sequence_open  => '4000:udp,4000:tcp,4000:udp',
      sequence_close => '4001:tcp,4001:udp,4001:tcp',
      port_to_manage => '22',
      interface_to_manage => 'eth0'
      command_timeout     => '15',
      prepend_rule        => false,
    }

Client Port knocker Usage
-----
It also install a port knocker client

To open the port:
 
knock hostname 4000:udp 4000:tcp 4000:udp

To close the port:

knock hostname 4001:tcp 4001:udp 4001:tcp

Parameters:
-----

**sequence_open:** sequence to open the port.

**sequence_close:** sequence to close the port.

**port_to_manage:** port to be opened 

**interface_to_manage:** network interface to be managed

**command_timeout:** Optional parameter expressed in seconds. If exist will close the port after the timeout. 

**prepend_rule:** false by default. If set to true the knock rule will be created using PREPEND as by default is created using APPEND

PuppetForge:
-----
Module also available on PuppetForge: https://forge.puppetlabs.com/juasiepo/knockd
