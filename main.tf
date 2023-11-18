module "cloud_run_backend" {
  source       = "./modules/cloud_run"
  service_name = "backend-service"
  image        = "gcr.io/projeto-7-404421/backend-image"
  environment  = "prd"
}

module "cloud_run_frontend" {
  source       = "./modules/cloud_run"
  service_name = "frontend-service"
  image        = "gcr.io/projeto-7-404421/frontend-image"
  environment  = "prd"
}

module "artifactory_registry" {
  source = "./modules/artifactory_registry"
  repo   = "artifactory-repo"
}

module "cloud_sql" {
  source     = "./modules/cloud_sql"
  db_name    = "app-database"
  region     = "us-west1"
  tier       = "db-f1-micro"
  admin_user = "admin"
  admin_pass = "admin_password"
}

terraform {
  required_providers {
    artifactory = {
      source  = "hashicorp/artifactory"
      version = "2.0.0"  # Substitua pela versão desejada e existente
    }
    # Adicione outras configurações de provedor, se necessário
  }
  
  # Outras configurações do Terraform, se houver
}

provider "artifactory" {
  # Configurações do provedor artifactory
}

# Defina seus recursos e módulos abaixo
