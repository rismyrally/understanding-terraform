terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.0"
    }
  }
}

# AWS configuration options
provider "aws" {
  region = "us-east-1"
}

resource "aws_instance" "example" {
  ami           = "ami-08a0d1e16fc3f61ea" # Amazon Linux 2023 AMI
  instance_type = "t2.micro"
}
