provider "google" {
  project = var.project_id
  region  = var.region
}

resource "google_compute_instance" "vm_instance" {
  project      = var.project_id
  name         = var.instance_name
  machine_type = var.instance_type
  zone         = "${var.region}-a"

  boot_disk {
    initialize_params {
      image = "debian-cloud/debian-11"
    }
  }

  network_interface {
    network = "default"
    access_config {
      // Ephemeral IP
    }
  }

  tags = ["poel-test"]
}