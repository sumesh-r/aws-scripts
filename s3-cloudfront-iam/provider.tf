terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
      version = "6.3.0"
    }
  }
}



provider "aws" {
  shared_credentials_files = [ "C:/Users/sumesh/.aws/credentials" ]
}