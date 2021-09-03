terraform {
  backend "s3" {
    bucket         = "thunderchrome-terraform-state-dev-us-east-1"
    key            = "terraform.tfstate.thunderchrome-east-1"
    dynamodb_table = "thunderchorme-terrform-us-east-1-lock"
    region         = "us-east-1"
    encrypt        = true
  }
}

provider "aws" {
  region  = "us-east-1"
}

