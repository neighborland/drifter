# -*- mode: ruby -*-
# vi: set ft=ruby :

Vagrant.configure(2) do |config|
  config.vm.box = "bento/ubuntu-16.04"

  config.vm.provider "virtualbox" do |v|
    # Change this to the name of your project.
    v.name = "drifter"
    v.memory = 1024 * 8
    v.cpus = 8
    v.customize ["modifyvm", :id, "--vram", "256"]
  end

  config.vm.provision "ansible" do |p|
    p.playbook = "playbook.yml"
    p.extra_vars = { ruby_version: "2.3.3",
                     pg_version: "9.6",
                     postgis: false }

    # By default install a pre-built phantomjs binary. To build from
    # source change this value to "phantomjs2"
    # Comma separated list:
    # p.skip_tags = %w[heroku]
    # p.tags = ["postgresql", "chrony"]
  end

  # Forward postgres and web server ports to the host.
  # config.vm.network "forwarded_port", guest: 5432, host: 5432
  # config.vm.network "forwarded_port", guest: 3000, host: 3000
  # config.vm.network "private_network", type: "dhcp"

  # Sharing folders over NFS generally has the best performance.  See
  # https://docs.vagrantup.com/v2/synced-folders/nfs.html for a
  # sudoers recipe that allows vagrant to setup the NFS share without
  # prompting for a password.
  # config.vm.synced_folder ".", "/vagrant", type: "nfs"
end
