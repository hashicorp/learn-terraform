provider "google" {
  project = var.project_id
  region  = var.region
}

resource "google_compute_instance" "vm_instance" {
  project      = var.project_id
  name         = "poel-test" // me da error cndo uso var.instance_name
  machine_type = var.instance_type
  zone         = "${var.region}-a"
  allow_stopping_for_update = true
 

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
  
  tags = ["poel-test-tag"]
}

resource "google_storage_bucket" "my-bucket" {
  name                        = "poel-test-s3"
  location                    = "EU"
  project                     = "spa-newlearningdev-dev-001"
  force_destroy               = true
  uniform_bucket_level_access = true
}

resource "google_storage_bucket_iam_binding" "object_access_binding" {
  bucket = google_storage_bucket.my-bucket.name
  role   = "roles/storage.objectViewer"

  members = [
    "serviceAccount:poel-dev-test@spa-newlearningdev-dev-001.iam.gserviceaccount.com"
  ]
}

resource "google_storage_bucket_iam_member" "bucket_access" {
  bucket = google_storage_bucket.my-bucket.name
  role   = "roles/storage.objectAdmin"
  member = "serviceAccount:poel-dev-test@spa-newlearningdev-dev-001.iam.gserviceaccount.com"
}

# # Upload files to the bucket
# resource "google_storage_bucket_object" "static_site_src" {
#   name   = "index.html"
#   source = "./website/index.html"
#   bucket = google_storage_bucket.my-bucket.name
# }