terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
      version = "6.3.0"
    }
  }
  backend "s3" {}
}



provider "aws" {
  region                   = var.region
  shared_credentials_files = [ "~/.aws/credentials" ]
}
