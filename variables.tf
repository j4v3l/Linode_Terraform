variable "linode_token" {
  description = "The API Token for Linode"
  type        = string
}

variable "vps_label" {
  description = "Label for the VPS instance"
  type        = string
}

variable "vps_image" {
  description = "Image for the VPS instance"
  type        = string
}

variable "vps_region" {
  description = "Region for the VPS instance"
  type        = string
}

variable "vps_type" {
  description = "Type for the VPS instance"
  type        = string
}

variable "vps_ssh_key" {
  description = "SSH key for the VPS instance"
  type        = string
}

variable "domain" {
  description = "Domain for the DNS record"
  type        = string
}

variable "soa_email" {
  description = "SOA email for the DNS record"
  type        = string
}

variable "tags" {
  description = "Tags for the DNS record"
  type        = list(string)
}

variable "record_name" {
  description = "Name for the DNS record"
  type        = string
}

variable "record_type" {
  description = "Type for the DNS record"
  type        = string
}

variable "record_target" {
  description = "Target for the DNS record"
  type        = string
}

variable "volume_size" {
  description = "Size for the storage volume"
  type        = number

}

variable "volume_label" {
  description = "Label for the storage volume"
  type        = string
}

variable "volume_region" {
  description = "Region for the storage volume"
  type        = string
}
variable "enable_vps_module" {
  description = "Set to true to enable the VPS module"
  type        = bool
  default     = true
}

variable "enable_dns_module" {
  description = "Set to true to enable the DNS module"
  type        = bool
  default     = true
}
variable "enable_storage_module" {
  description = "Set to true to enable the Storage module"
  type        = bool
  default     = true
}
