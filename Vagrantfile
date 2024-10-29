
Vagrant.configure("2") do |config|
 
  config.vm.box = "geerlingguy/ubuntu2004"
  config.vm.network "forwarded_port", guest: 5000, host: 5000

  # Forward port 3000
  config.vm.network "forwarded_port", guest: 3000, host: 3000
  config.vm.provider "virtualbox" do |vb|
    vb.memory = "400"
    vb.cpus = 1
  end
  
end
