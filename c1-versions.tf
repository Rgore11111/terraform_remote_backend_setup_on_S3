terraform {
  required_version = ">= 1.9.0"
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = ">= 6.0"
    }
  }
  backend "s3" {
  bucket = "tfstate-dev-ap-south-1-kvt71d"
  key    = "global/s3/terraform.tfstate"
  region = "ap-south-1"
  encrypt = true
  use_lockfile = true
}
}


provider "aws" {
  region = var.aws_region
}