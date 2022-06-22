variable "description" {
  type    = string
  default = "(managed by Terraform)"
}

variable "key_value_map" {
  type = map(string)
}

variable "deletion_mode" {
  description = "Whether to delete them with a recovery period (SOFT) or immediately (IMMEDIATE)"
  type        = string
  default     = "SOFT"

  validation {
    condition     = var.deletion_mode == "SOFT" || var.deletion_mode == "IMMEDIATE"
    error_message = "The deletion_mode value should be \"SOFT\" or \"IMMEDIATE\"."
  }
}
