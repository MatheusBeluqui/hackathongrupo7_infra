variable "repo" {
  description = "Nome do repositório no Artifact Registry"
}

resource "google_artifact_registry_repository" "backend_repo" {
  repository_id = "artifact_registry_repository"
  format        = "docker"
}