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
