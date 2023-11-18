variable "project_id" {
  description = "ID do projeto GCP"
}

variable "location" {
  description = "Região para o Artifact Registry"
}

variable "repository_name" {
  description = "Nome do repositório Artifact Registry"
}

resource "google_artifact_registry_repository" "artifact-registry-app" {
  location      = "us-west1"
  repository_id = "artifact-registry-app"
  description   = "Example docker repository"
  format        = "DOCKER"
}
