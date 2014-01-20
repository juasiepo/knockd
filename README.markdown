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
    }

Client Port knocker Usage
-----
It also install a port knocker client

To open the port:
 
knock hostname 4000:udp 4000:tcp 4000:udp

To close the port:

knock hostname 4001:tcp 4001:udp 4001:tcp

knockd
============

Overview
--------
This is the knockd module.

Installs and configures knockd (a port knocking software).

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
    }

Client Port knocker Usage
-----
It also install a port knocker client

To open the port:
 
knock hostname 4000:udp 4000:tcp 4000:udp

To close the port:

knock hostname 4001:tcp 4001:udp 4001:tcp
