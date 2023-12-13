
output "vps_instance_status" {
  value       = length(module.linode_instance) > 0 ? module.linode_instance[0].instance_status : ""
  description = "The status of the VPS instance."
}

output "dns_domain_name" {
  value       = length(module.dns_config) > 0 ? module.dns_config[0].domain_name : ""
  description = "The name of the DNS domain."
}

output "dns_domain_soa_email" {
  value       = length(module.dns_config) > 0 ? module.dns_config[0].domain_soa_email : ""
  description = "The SOA email of the DNS domain."
}

output "dns_domain_tags" {
  value       = length(module.dns_config) > 0 ? module.dns_config[0].domain_tags : []
  description = "The tags of the DNS domain."
}

output "vps_instance_ip" {
  value       = length(module.linode_instance) > 0 ? module.linode_instance[0].instance_ip : ""
  description = "The IP address of the VPS instance."
}
