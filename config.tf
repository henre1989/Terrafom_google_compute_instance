terraform {
  required_providers {
    google = {
      source = "hashicorp/google"
      version = "3.59.0"
    }
  }
}

provider "google" {
  credentials = file("../silken-binder-273406-b8be5371d985.json")
  project = "silken-binder-273406"
  region = "europe-north1"
  zone         = "europe-north1-b"
  }

resource "google_compute_instance" "default" {
  name         = "build_ist"
  machine_type = "e2-medium"
  boot_disk {
    initialize_params {
      image = "ubuntu-os-cloud/ubuntu-2004-lts"
    }
  }
  network_interface {
    network = "default"
    access_config {
    }
  }
}
