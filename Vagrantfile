Vagrant.configure("2") do |config|

    #####esto es para dev
    config.vm.network :private_network, ip: "10.1.1.10"
    config.vm.network :forwarded_port, guest: 80, host: 8080
    config.vm.synced_folder "../", "/vagrant", type: "nfs", id: "vagrant-root"
    #####

    config.vm.box = "precise32"
    config.vm.box_url = "http://files.vagrantup.com/precise32.box"

    #config.vm.provider :virtualbox do |vb|
     #vb.customize ["modifyvm", :id, "--memory", "1024"]
    #end

    config.vm.provision :puppet do |puppet|
        puppet.manifests_path = "puppet/manifests"
        puppet.manifest_file  = "site.pp"
        puppet.module_path = "puppet/modules"
        #puppet.options = "--verbose --debug"
        #puppet.options = "--verbose"
    end

end
