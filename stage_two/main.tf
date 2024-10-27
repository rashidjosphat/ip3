terraform {
  required_providers {
    virtualbox = {
      source  = "terra-farm/virtualbox"
      version = "0.2.2-alpha.1"
    }
  }
}

provider "virtualbox" {}

resource "virtualbox_vm" "alpine" {
  name        = "alpine"
  image       = "/home/kali/.vagrant.d/boxes/geerlingguy-VAGRANTSLASH-ubuntu2004/1.0.4/virtualbox/packer-ubuntu-20.04-amd64-disk001.vmdk" 
  cpus        = 1
  memory      = 400

  network_adapter {
    type = "hostonly"
  }
}
