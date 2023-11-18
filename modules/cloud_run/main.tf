variable "service_name" {}
variable "image" {}
variable "environment" {}

resource "google_cloud_run_service" "cloud_run" {
  name     = var.service_name
  location = "us-west1"

  template {
    spec {
      containers {
        image = var.image
      }
    }
  }
}
