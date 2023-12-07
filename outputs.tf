# output "vps_instance_id" {
#   value       = module.linode_vps.instance_id
#   description = "The ID of the VPS instance."
# }

output "vps_instance_ip" {
  value       = module.linode_vps.instance_ip
  description = "The public IP address of the VPS instance."
}

# output "vps_instance_label" {
#   value       = module.linode_vps.instance_label
#   description = "The label of the VPS instance."
# }

output "vps_instance_status" {
  value       = module.linode_vps.instance_status
  description = "The status of the VPS instance."
}
