class xdebug {
    case $operatingsystem {
        Debian,Ubuntu:  { include xdebug::debian}
        default: { fail "Unsupported operatingsystem ${operatingsystem}" }
    }

    #### configure remote xdebug env:
	#exec {"sudo sed 's/xdebug.remote_enable=.*/xdebug.remote_enable=on/g' /etc/php5/conf.d/xdebug_config.ini":
	#    path    => "/bin:/usr/bin",
	#    require => Package[php5],
	#    notify  => Service[apache2]
	#}
	#exec {"sudo sed 's/xdebug.remote_handler=.*/xdebug.remote_handler=dbgp/g' /etc/php5/conf.d/xdebug_config.ini":
	#    path    => "/bin:/usr/bin",
	#    require => Package[php5],
	#    notify  => Service[apache2]
	#}
	#exec {"sudo sed 's/xdebug.remote_host=.*/xdebug.remote_host=10.1.1.1/g' /etc/php5/conf.d/xdebug_config.ini":
	#    path    => "/bin:/usr/bin",
	#    require => Package[php5],
	#    notify  => Service[apache2]
	#}
	#exec {"sudo sed 's/xdebug.remote_port=.*/xdebug.remote_port=9000/g' /etc/php5/conf.d/xdebug_config.ini":
	#    path    => "/bin:/usr/bin",
	#    require => Package[php5],
	#    notify  => Service[apache2]
	#}
}