terraform {
  required_providers {
    random = {
      source = "hashicorp/random"
      version = "3.5.1"
    }

    aws = {
      source = "hashicorp/aws"
      version = "5.18.1"
    }
  }
}

provider "random" {
  # Configuration options
}

resource "random_string" "s3_bucket_name" {
  length           = 32
  special          = false
  lower            = true
  upper            = false
}

output "random_s3_bucket_name" {
  value = random_string.s3_bucket_name.result
}

provider "aws" {
  # Configuration options
}

resource "aws_s3_bucket" "s3_bucket" {
  bucket = random_string.s3_bucket_name.result

  tags = {
    Name        = random_string.s3_bucket_name.result
    Created_by = "Terraform"
    Environment = "Dev"
  }
}