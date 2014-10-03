class apache 
{      
    package 
    { 
        "apache2":
            ensure  => present,
            require => Exec['apt-get update']
    }
    package 
    { 
        "libapache2-mod-php5":
            ensure  => present,
            require => Exec['apt-get update']
    }
    
    service 
    { 
        "apache2":
            ensure      => running,
            enable      => true,
            require     => Package['apache2'],
            subscribe   => [
    #           File["/etc/apache2/mods-enabled/rewrite.load"],
                File["/etc/apache2/sites-available/default"]
            ],
    }

    #file 
    #{ 
    #    "/etc/apache2/mods-enabled/rewrite.load":
    #        ensure  => link,
    #        target  => "/etc/apache2/mods-available/rewrite.load",
    #        require => Package['apache2'],
    #}

    file 
    { 
        "/etc/apache2/sites-available/default":
            ensure  => present,
            source  => "/vagrant/puppet/templates/vhost",
            require => Package['apache2'],
    }

   # exec 
   # { 
   #     'echo "ServerName localhost" | sudo tee /etc/apache2/conf.d/fqdn':
   #         require => Package['apache2'],
   # }


    #esto es para prod
    #file 
    #{ 
    #    "/etc/network/default":
    #        ensure  => present,
    #        source  => "/vagrant/puppet/templates/interaces",
    #        require => Package['apache2'],
    #}
    
    #esto es para prod
    #exec
    #{
    #    'sudo /etc/init.d/networking restart':
    #        require => Package['apache2'],
    #}
}
