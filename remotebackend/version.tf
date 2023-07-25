#this is s3 storing state file from terraform
terraform {
  backend "s3" {
    bucket         = "gymterrafromstate"
    key            = "Dev/dev.tfstate"
    region         = "us-east-1"
    dynamodb_table = "terrafrom-lock"
  }
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "5.8.0"
    }
  }
}

provider "aws" {
  region  = "us-east-1"
  profile = "default"
}

