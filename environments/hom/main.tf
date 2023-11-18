provider "google" {
  credentials = file("path/to/credentials.json")
  project     = "projeto-7-404421"
  region      = "us-west1"  # Altere conforme sua região
}

module "cloud_run_frontend_hom" {
  source        = "../modules/cloud_run"
  service_name  = "frontend-service-hom"
  image         = "gcr.io/projeto-7-404421/frontend-image:hom"
  environment   = "hom"
}

module "cloud_run_backend_hom" {
  source        = "../modules/cloud_run"
  service_name  = "backend-service-hom"
  image         = "gcr.io/projeto-7-404421/backend-image:hom"
  environment   = "hom"
}

module "artifactory_registry_hom" {
  source = "../modules/artifactory_registry"
  repo   = "backend-repo-dev"
}

module "cloud_sql_hom" {
  source     = "../modules/cloud_sql"
  db_name    = "app-database-hom"
  region     = "us-west1"  # Altere conforme sua região
  tier       = "db-f1-micro"
  admin_user = "admin"
  admin_pass = "admin_password"
}
