variable "repo" {}

resource "artifactory_registry_repository" "artifactory_repo" {
  name = var.repo
}
