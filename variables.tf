variable "valid_hours" {
  type        = number
  default     = 87600
  description = "The number of hours the root certificate is valid. By default, 87600 hours or 10 years."
}

variable "common_name" {
  type        = string
  description = "The common name of the root certificate issuer"
}

variable "organization" {
  type        = string
  description = "The name of the organization issuing the root certificate"
}
