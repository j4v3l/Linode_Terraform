# output "vps_instance_id" {
#   value       = module.linode_vps.instance_id
#   description = "The ID of the VPS instance."
# }

output "vps_instance_ip" {
  value       = module.linode_instance.instance_ip
  description = "The public IP address of the VPS instance."
}

# output "vps_instance_label" {
#   value       = module.linode_vps.instance_label
#   description = "The label of the VPS instance."
# }

output "vps_instance_status" {
  value       = module.linode_instance.instance_status
  description = "The status of the VPS instance."
}

output "dns_domain_name" {
  value       = module.dns_config.domain_name
  description = "The name of the DNS domain."
}

output "dns_domain_soa_email" {
  value       = module.dns_config.domain_soa_email
  description = "The SOA email of the DNS domain."
}

output "dns_domain_tags" {
  value       = module.dns_config.domain_tags
  description = "The tags of the DNS domain."
}
