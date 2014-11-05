VAGRANTFILE_API_VERSION = "2"

Vagrant.configure(VAGRANTFILE_API_VERSION) do |config|

  config.vm.define "weave1" do |weave1|
    weave1.vm.box = "trustyx64"
    weave1.vm.box_url = "http://opscode-vm-bento.s3.amazonaws.com/vagrant/virtualbox/opscode_ubuntu-14.04_chef-provisionerless.box"
    weave1.vm.hostname = "weave1"
    weave1.vm.network "private_network", ip: "10.10.0.2"
    weave1.vm.provider :virtualbox do |vb|
      vb.memory = 2048
      vb.cpus = 2
    end
    weave1.vm.provision "shell", path: "weave-base.sh"
  end

  config.vm.define "weave2" do |weave2|
    weave2.vm.box = "trustyx64"
    weave2.vm.box_url = "http://opscode-vm-bento.s3.amazonaws.com/vagrant/virtualbox/opscode_ubuntu-14.04_chef-provisionerless.box"
    weave2.vm.hostname = "weave2"
    weave2.vm.network "private_network", ip: "10.10.0.3"
    weave2.vm.provider :virtualbox do |vb|
      vb.memory = 2048
      vb.cpus = 2
    end
    weave2.vm.provision "shell", path: "weave-base.sh"
  end

  config.vm.define "ovs1" do |ovs1|
    ovs1.vm.box = "trustyx64"
    ovs1.vm.box_url = "http://opscode-vm-bento.s3.amazonaws.com/vagrant/virtualbox/opscode_ubuntu-14.04_chef-provisionerless.box"
    ovs1.vm.hostname = "ovs1"
    ovs1.vm.network "private_network", ip: "10.10.0.4"
    ovs1.vm.provider :virtualbox do |vb|
      vb.memory = 2048
      vb.cpus = 2
    end
    ovs1.vm.provision "shell", path: "ovs-base.sh"
  end

  config.vm.define "ovs2" do |ovs2|
    ovs2.vm.box = "trustyx64"
    ovs2.vm.box_url = "http://opscode-vm-bento.s3.amazonaws.com/vagrant/virtualbox/opscode_ubuntu-14.04_chef-provisionerless.box"
    ovs2.vm.network "private_network", ip: "10.10.0.5"
    ovs2.vm.hostname = "ovs2"
    ovs2.vm.provider :virtualbox do |vb|
      vb.memory = 2048
      vb.cpus = 2
    end
    ovs2.vm.provision "shell", path: "ovs-base.sh"
  end

end
