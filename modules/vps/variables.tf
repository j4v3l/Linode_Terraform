variable "label" {
  description = "Label for the VPS instance"
  type        = string
}

variable "image" {
  description = "Image for the VPS instance"
  type        = string
}

variable "region" {
  description = "Region where the VPS will be deployed"
  type        = string
}

variable "type" {
  description = "Type of the VPS instance"
  type        = string
}

variable "ssh_key" {
  description = "SSH key for the VPS instance"
  type        = string
}