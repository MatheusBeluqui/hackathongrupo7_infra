variable "service_name" {
  description = "Nome do serviço Cloud Run"
}

variable "image" {
  description = "Imagem do contêiner para o serviço Cloud Run"
}

variable "environment" {
  description = "Ambiente (prd, dev, etc.)"
}

# Recurso Cloud Run
resource "google_cloud_run_service" "cloud_run_backend" {
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
