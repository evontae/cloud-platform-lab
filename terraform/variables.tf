variable "region" {
  description = "The Azure region to deploy into"
  type        = string
  default     = "southcentralus"
}

variable "project_name" {
  description = "Prefix used for naming all resources"
  type        = string
  default     = "elab-dev"
}