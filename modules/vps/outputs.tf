output "instance_id" {
  value       = linode_instance.vps.id
  description = "The ID of the VPS instance"
}

output "instance_ip" {
  value       = linode_instance.vps.ip_address
  description = "The public IP address of the VPS instance"
}

output "instance_label" {
  value       = linode_instance.vps.label
  description = "The label of the VPS instance"
}

output "instance_status" {
  value       = linode_instance.vps.status
  description = "The status of the VPS instance"
}
