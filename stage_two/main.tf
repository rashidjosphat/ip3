terraform {
  required_providers {
    vagrant = {
      source  = "bmatcuk/vagrant"
      version = "~> 4.0.0"
    }
  }
}

resource "vagrant_vm" "alpine_vm" {
 
  vagrantfile_dir = "../"  # Pointing to the parent directory where the Vagrantfile is located
  env = {
    KEY = "value"  # Replace with your desired environment variables if needed
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
