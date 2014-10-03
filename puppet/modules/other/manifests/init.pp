class other 
{
    package 
    { 
        "curl":
            ensure  => present,
            require => Exec['apt-get update']
    }
    package 
    { 
        "vim":
            ensure  => present,
            require => Exec['apt-get update']
    }
    package 
    { 
        "git":
            ensure  => present,
            require => Exec['apt-get update']
    }
    package 
    { 
        "unzip":
            ensure  => present,
            require => Exec['apt-get update']
    }
}
