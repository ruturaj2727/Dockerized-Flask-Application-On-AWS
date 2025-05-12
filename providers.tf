
terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
      version = "6.0.0-beta1"
    }
  }
}


provider "aws" {
  region = "us-east-1"
}

# Using remote backend
terraform {
  backend "s3" {
    bucket = "my-backend-bucket-devops101-terraform"
    key    = "env:/terraform.tfstate"
    region = "us-east-1"
  }
}
