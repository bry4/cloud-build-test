variable "project_id" {
  type        = string
  description = "Set the GCP project id"
}

variable "project_region" {
  type        = string
  description = "Set the region of the GCP project"
}

variable "project_zone" {
  type        = string
  description = "Set the zone of the GCP project"
}

variable "environment" {
  type        = string
  description = "Set the environment prod or dev"
}

variable "service_name" {
  type        = string
  description = "Set the name of the service for cloud services"
}


# Local variables used by the entire project
locals {
  sanitized_prefix = "${var.project_region}-${var.service_name}"
}