terraform {
  required_providers {
    google = {
      source = "hashicorp/google"
      version = "3.70.0"
    }

    archive = {
      source = "hashicorp/archive"
      version = "2.2.0"
    }
  }
}

provider "google" {
  project = var.project_id
  region  = var.project_region
}