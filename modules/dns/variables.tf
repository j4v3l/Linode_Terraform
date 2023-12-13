variable "domain" {
  description = "The domain name"
  type        = string
}

variable "soa_email" {
  description = "SOA email address"
  type        = string
}

variable "tags" {
  description = "Tags for the domain"
  type        = list(string)
  default     = []
}

variable "record_name" {
  description = "The name of the record"
  type        = string
}

variable "record_type" {
  description = "The type of the record"
  type        = string
}

variable "record_target" {
  description = "The target of the record"
  type        = string
}

variable "type" {
  description = "The type of the instance"
  type        = string
  default     = "master"
}
