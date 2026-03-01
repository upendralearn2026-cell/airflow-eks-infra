terraform {
  backend "s3" {
    bucket = "upd-airflow-terraform-state-dev"
    key    = "prod/terraform.tfstate"
    region = "ap-south-1"
    dynamodb_table = "terraform-lock"
    encrypt = true
  }
}