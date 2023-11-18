module "cloud_run" {
  source       = "./modules/cloud_run"
  service_name = "backend-service"
  image        = "gcr.io/your-project-id/backend-image"
  environment  = "prod"
}

module "artifactory_registry" {
  source = "./modules/artifactory_registry"
  repo   = "backend-repo"
}

module "cloud_sql" {
  source     = "./modules/cloud_sql"
  db_name    = "app-database"
  region     = "us-central1"
  tier       = "db-f1-micro"
  admin_user = "admin"
  admin_pass = "admin_password"
}
