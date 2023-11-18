module "cloud_run_backend" {
  source       = "./modules/cloud_run"
  service_name = "backend-service"
  image        = "gcr.io/projeto-7-404421/backend-image:prd"
  environment  = "prd"
}

module "cloud_run_frontend" {
  source       = "./modules/cloud_run"
  service_name = "frontend-service"
  image        = "gcr.io/projeto-7-404421/frontend-image:prd"
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
  # Configurações do provedor google
  project = "Projeto-7"
  region  = "us-west1"
}