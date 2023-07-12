Vagrant.configure("2") do |config|

  config.vm.box = "generic/ubuntu2204"

  config.vm.provider "virtualbox" do |v|
    #v.gui = true
  end

  config.vm.boot_timeout = 900

  config.vm.network "private_network", ip: "192.168.33.11"

  config.vm.hostname = "coding-platform"

  config.vm.provision "file", 
    source: "~/.ssh/id_rsa.pub", destination: "/home/vagrant/.ssh/id_rsa.pub"
  
  script = <<-SCRIPT
    chmod 700 /home/vagrant/.ssh
    cat /home/vagrant/.ssh/id_rsa.pub >> /home/vagrant/.ssh/authorized_keys
    chmod -R 600 /home/vagrant/.ssh/authorized_keys
  SCRIPT

  config.vm.provision "shell",
    inline: script

  config.vm.provision "ansible" do |ansible|
    ansible.playbook = "ansible/main.yml"
    # ansible.verbose = "vvv"
  end
end
