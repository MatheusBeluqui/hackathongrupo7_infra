odule "cloud_run_backend" {
  source       = "./modules/cloud_run"
  service_name = "backend-service"
  image        = var.backend_image
  environment  = "prd"
}

module "cloud_run_frontend" {
  source       = "./modules/cloud_run"
  service_name = "frontend-service"
  image        = var.frontend_image
  environment  = "prd"
}

module "artifactory_registry" {
  source = "./modules/artifactory_registry"
  repo   = "artifactory-repo"
}

module "cloud_sql" {
  source     = "./modules/cloud_sql"
  db_name    = "app-database"
  region     = var.region
  tier       = "db-f1-micro"
  admin_user = "admin"
  admin_pass = var.db_password
}

terraform {
  required_providers {
    google = {
      source  = "hashicorp/google"
      version = "3.5.0"  # Substitua pela versão desejada e existente
    }
    # Adicione outras configurações de provedor, se necessário
  }
  
  # Outras configurações do Terraform, se houver
}

provider "google" {
  # Configurações do provedor google
  project = var.project_name
  region  = var.region
}