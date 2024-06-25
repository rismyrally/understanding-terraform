terraform {
  backend "s3" {
    bucket         = "understanding-terraform-tf-state"
    key            = "web-app/tf-infra/terraform.tfstate"
    region         = "us-east-1"
    dynamodb_table = "terraform-state-locking"
    encrypt        = true
  }

  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.0"
    }
  }
}

# AWS configuration options
provider "aws" {
  region = var.region
}

module "web_app" {
  source = "./modules"

  # Input Variables
  app_name         = var.app_name
  environment_name = var.environment_name
  instance_type    = var.instance_type
  bucket_name      = var.bucket_name
  create_dns_zone  = var.create_dns_zone
  domain           = var.domain
  db_name          = var.db_name
  db_user          = var.db_user
  db_pass          = var.db_pass
}
