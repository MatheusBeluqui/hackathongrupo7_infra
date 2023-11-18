module "cloud_run_backend" {
  source       = "./modules/cloud_run"
  service_name = "backend-service"
  image        = "gcr.io/projeto-7-404421/spotmusic-back-prod:latest"
  environment  = "prd"
}

module "cloud_run_frontend" {
  source       = "./modules/cloud_run"
  service_name = "frontend-service"
  image        = "gcr.io/projeto-7-404421/spotmusic-front-prod:latest"
  environment  = "prd"
}

module "cloud_sql" {
  source     = "./modules/cloud_sql"
  db_name    = "app-database"
  region     ="us-west1"
  tier       = "db-f1-micro"
  admin_user = "admin"
  admin_pass = "qwe123"
}

terraform {
  required_providers {
    google = {
      source  = "hashicorp/google"
      version = "3.65.0"  # Substitua pela versão desejada e existente
    }
  }
}

provider "google" {
  credentials = file("credentials.json")
  project     = "projeto-7-404421"
  region      = "us-west1"
}
