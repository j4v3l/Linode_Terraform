terraform {
  required_providers {
    linode = {
      source  = "linode/linode"
      version = "2.10.1"
    }
  }
}

resource "linode_volume" "volume" {
  label     = var.volume_label
  size      = var.volume_size
  region    = var.region
  linode_id = var.linode_instance_id
}
