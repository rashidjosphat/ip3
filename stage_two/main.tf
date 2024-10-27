terraform {
  required_providers {
    vagrant = {
      source  = "bmatcuk/vagrant"
      version = "~> 4.0.0"
    }
  }
}

resource "vagrant_vm" "alpine_vm" {
  vagrantfile_dir = "../"  # Adjust as necessary

  provisioner "local-exec" {
    command = <<EOT
      ANSIBLE_BECOME_PASS=${var.become_password} ansible-playbook ../ansible/playbook.yml
    EOT
  }

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
