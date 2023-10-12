provider "google" {
  credentials = file("/Users/hajirufai/Downloads/final-project-401719-8f86a18ff4ee.json")
  project    = "final-project-401719"
  region     = "us-east"
}

provider "postgresql" {
  host     = "your-postgresql-host"
  username = "your-postgresql-username"
  password = "your-postgresql-password"
  database = "your-postgresql-database"
}
