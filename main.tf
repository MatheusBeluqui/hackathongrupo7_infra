module "cloud_sql" {
  source     = "./modules/cloud_sql"
  db_name    = "app-database"
  region     ="us-west1"
  tier       = "db-f1-micro"
  admin_user = "admin"
  admin_pass = "qwe123"
}

module "artifact_registry" {
  source         = "./modules/artifact_registry"
  project_id     = "projeto-7-404421"
  location       = "us-west1"
  repository_name = "artifact-registry-app"
}

terraform {
  required_providers {
    google = {
      source  = "hashicorp/google"
      version = "3.77.0"
    }
  }
}

provider "google" {
  credentials     = file("credentials.json")
  project         = "projeto-7-404421"
  region          = "us-west1"
}
