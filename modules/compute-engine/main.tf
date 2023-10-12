provider "google" {
  credentials = file("/Users/hajirufai/Downloads/final-project-401719-8f86a18ff4ee.json")
  project    = "final-project-401719d"
  region     = "us-central1"
}

resource "google_compute_instance" "example_instance" {
  name         = "example-instance"
  machine_type = "n1-standard-1"
  zone         = "us-central1-a"

  boot_disk {
    initialize_params {
      image = "ubuntu-os-cloud/ubuntu-2004-lts"
    }
  }

  network_interface {
    network = "default"
    access_config {
      // Ephemeral IP
    }
  }

  metadata_startup_script = <<-EOF
    #!/bin/bash
    # Add your startup script commands here
  EOF
}
