output "domain_id" {
  value       = linode_domain.foobar.id
  description = "The ID of the domain"
}

output "domain_name" {
  value       = linode_domain.foobar.domain
  description = "The name of the domain"
}

output "domain_soa_email" {
  value       = linode_domain.foobar.soa_email
  description = "The SOA email of the domain"
}

output "domain_tags" {
  value       = linode_domain.foobar.tags
  description = "The tags of the domain"
}

output "record_id" {
  value       = linode_domain_record.foobar.id
  description = "The ID of the record"
}

output "record_name" {
  value       = linode_domain_record.foobar.name
  description = "The name of the record"
}

output "record_type" {
  value       = linode_domain_record.foobar.record_type
  description = "The type of the record"
}

output "record_target" {
  value       = linode_domain_record.foobar.target
  description = "The target of the record"
}
