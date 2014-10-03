# Default path
Exec 
{
  path => ["/usr/bin", "/bin"]
}

exec 
{ 
    'apt-get update':
        command => '/usr/bin/apt-get update'
}

include bootstrap
include other
include apache
include php
include mysql
#include nfs
include xdebug

#dev stuff for xdebug:
xdebug::config { 'default':
        remote_host => '10.1.1.1', # Vagrant users can specify their address
        remote_port => '9000', # Change default settings 
        remote_handler => 'dbgp', # Vagrant users can specify their address
        remote_enable => 'on', # Change default settings 
        remote_autostart => '0', # Change default settings 
        default_enable => '1'
    }
####    
