class nfs 
{
    $packages = [
        "nfs-common", 
    ]
    
    package 
    { 
        $packages:
            ensure  => present,
            require => Exec['apt-get update']
    }
  
}
