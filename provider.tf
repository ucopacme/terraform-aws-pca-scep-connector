terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.100"
    }
    awscc = {
      source  = "hashicorp/awscc"
      version = "~> 1.60"
    }
  }
}


provider "aws" {
  region = var.aws_region
}

provider "awscc" {
  region = var.aws_region
}
