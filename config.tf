terraform {
  required_providers {
    google = {
      source = "hashicorp/google"
      version = "3.59.0"
    }
  }
}

provider "google" {
  resource "google_compute_instance" "default" {
  name         = "build_ist"
  machine_type = "e2-medium"
  zone         = "europe-north1-b"

  boot_disk {
    initialize_params {
      image = "ubuntu-os-cloud/ubuntu-2004-lts"
    }
  }
}
}