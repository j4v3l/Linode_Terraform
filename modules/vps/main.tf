terraform {
  required_providers {
    linode = {
      source  = "linode/linode"
      version = "2.10.1"
    }
  }
}
resource "linode_instance" "vps" {

  label           = var.label
  image           = var.image
  region          = var.region
  type            = var.type
  authorized_keys = [trimspace(file(pathexpand(var.ssh_key)))]
}
