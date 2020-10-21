# Terraform Config Details
terraform {
  required_version = ">=0.13.2"
}

# Provider info with project name, region and zone
provider "google" {
  credentials   = file(var.credkey)
  project       = var.project
  region        = var.region
}

# Network configuration for the project
resource "google_compute_network" "vpc_network" {
  name = var.net
  auto_create_subnetworks = true
  project = var.project
}

# Sets the metadata for the project to enable OS Login

resource "google_compute_project_metadata_item" "os-login" {
  key           = "enable-oslogin"
  value         = var.enable_oslogin
  project       = var.project
}

