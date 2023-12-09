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
