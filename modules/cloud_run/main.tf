variable "service_name" {}
variable "image" {}
variable "environment" {}

resource "google_cloud_run_service" "cloud_run" {
  name     = var.service_name
  location = "us-west1"  # Altere conforme sua região

  template {
    spec {
      containers {
        image = var.image
      }
    }
  }
}
