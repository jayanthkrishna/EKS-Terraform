terraform {
  required_version = "~> 1.8.4"
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.49.0"
    }
  }
  backend "s3" {
    bucket         = "jayanth-terraform-projects-tfstatefile-bucket"
    region         = "ap-south-1"
    key            = "eks/terraform.tfstate"
    encrypt        = true
  }
}

provider "aws" {
  region  = var.aws-region
}