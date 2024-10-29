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

  get_ports = true
}

resource "null_resource" "ansible_provision" {
  depends_on = [vagrant_vm.alpine_vm]

  provisioner "local-exec" {
    command = <<EOT
      ANSIBLE_BECOME_PASS=${var.become_password} ansible-playbook -i ../ansible/inventory.ini ../ansible/playbook.yml
    EOT
  }

  triggers = {
    always_run = timestamp()  # This ensures the provisioner runs every time
  }
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
