variable "project_id" {
  description = "ID do projeto GCP"
}

variable "location" {
  description = "Região para o Artifact Registry"
}

variable "repository_name" {
  description = "Nome do repositório Artifact Registry"
}

resource "google_artifact_registry_repository" "artifact-registry-backend" {
  location      = "us-west1"
  repository_id = "artifact-registry-backend"
  description   = "Example docker repository"
  format        = "DOCKER"
}

resource "google_artifact_registry_repository" "artifact-registry-frontend" {
  location      = "us-west1"
  repository_id = "artifact-registry-frontend"
  description   = "Example docker repository"
  format        = "DOCKER"
}