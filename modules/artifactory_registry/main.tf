variable "repo" {
  description = "Nome do repositório no Artifact Registry"
}

resource "google_artifact_registry_repository" "backend_repo" {
  repository_id = var.repo
  format        = "docker"
}

resource "google_artifact_registry_repository" "frontend_repo" {
  repository_id = "${var.repo}-frontend"
  format        = "docker"
}