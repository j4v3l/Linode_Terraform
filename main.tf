terraform {
  required_providers {
    linode = {
      source  = "linode/linode"
      version = "2.10.1"
    }
  }
}

provider "linode" {
  token = var.linode_token
}

module "linode_instance" {
  source  = "./modules/vps"
  label   = var.vps_label
  image   = var.vps_image
  region  = var.vps_region # Example region
  type    = var.vps_type   # Example instance type
  ssh_key = var.vps_ssh_key
}

module "dns_config" {
  source        = "./modules/dns"
  domain        = var.domain
  soa_email     = var.soa_email
  tags          = var.tags
  record_name   = var.record_name
  record_type   = var.record_type
  record_target = var.record_target
}

module "storage" {
  source             = "./modules/storage"
  volume_label       = var.volume_label
  volume_size        = var.volume_size
  region             = var.volume_region
  linode_instance_id = module.linode_instance.instance_id
}
