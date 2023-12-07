terraform {
  required_providers {
    linode = {
      source  = "linode/linode"
      version = "2.10.1"
    }
  }
}


module "linode_vps" {
  source = "./modules/vps"

  label  = var.vps_label
  image  = var.vps_image
  region = var.vps_region # Example region
  type   = var.vps_type   # Example instance type
  ssh_key = var.vps_ssh_key
}
