terraform {
  required_providers {
    vagrant = {
      source  = "bmatcuk/vagrant"
      version = "~> 4.0.0"
    }
  }
}

resource "vagrant_vm" "alpine_vm" {
 
  vagrantfile_dir = "../"  

  provisioner "local-exec" {
    command = "ansible-playbook -i ../ansible/inventory ../ansible/playbook.yml --ask-become-pass"
  }

  env = {
    KEY = "value"  
  }
  get_ports = true
}

output "machine_names" {
  value = vagrant_vm.alpine_vm.machine_names
}

output "ssh_config" {
  value = vagrant_vm.alpine_vm.ssh_config
}

output "ports" {
  value = vagrant_vm.alpine_vm.ports
}
