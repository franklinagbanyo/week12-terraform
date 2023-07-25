terraform {
  backend "s3" {
    bucket         = "gymterrafromstate"
    key            = "jenjins/jenkins.tfstate"
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