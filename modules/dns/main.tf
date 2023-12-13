terraform {
  required_providers {
    linode = {
      source  = "linode/linode"
      version = "2.10.1"
    }
  }
}

resource "linode_domain" "foobar" {
  type      = var.type
  domain    = var.domain
  soa_email = var.soa_email
  tags      = var.tags
}

resource "linode_domain_record" "foobar" {
  domain_id   = linode_domain.foobar.id
  name        = var.record_name
  record_type = var.record_type
  target      = var.record_target
}
