terraform {
  backend "gcs" {
    bucket = "terraform-state-bjvc"
    prefix = "env/dev"
  }
}