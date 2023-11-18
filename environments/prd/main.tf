provider "google" {
  credentials = file("path/to/credentials.json")
  project     = "projeto-7-404421"
  region      = "us-central1"  # Altere conforme sua região
}

module "cloud_run_frontend_prd" {
  source        = "../modules/cloud_run"
  service_name  = "frontend-service-prd"
  image         = "gcr.io/projeto-7-404421/frontend-image:prd"
  environment   = "prd"
}

module "cloud_run_backend_prd" {
  source        = "../modules/cloud_run"
  service_name  = "backend-service-prd"
  image         = "gcr.io/projeto-7-404421/backend-image:prd"
  environment   = "prd"
}

module "artifactory_registry_prd" {
  source = "../modules/artifactory_registry"
  repo   = "backend-repo-dev"
}

module "cloud_sql_prd" {
  source     = "../modules/cloud_sql"
  db_name    = "app-database-prd"
  region     = "us-central1"  # Altere conforme sua região
  tier       = "db-f1-micro"
  admin_user = "admin"
  admin_pass = "admin_password"
}
