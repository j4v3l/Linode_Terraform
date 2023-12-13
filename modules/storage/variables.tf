variable "volume_label" {
  description = "The label for the Linode volume"
  type        = string
}

variable "volume_size" {
  description = "The size of the Linode volume in GB"
  type        = number
}

variable "region" {
  description = "The region where the volume is created"
  type        = string
}

variable "linode_instance_id" {
  description = "ID of the Linode instance to which the volume is attached"
  type        = number
}
