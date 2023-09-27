terraform {
  required_providers {
    random = {
      source = "hashicorp/random"
      version = "3.5.1"
    }
  }
}

provider "random" {
  # Configuration options
}

resource "random_string" "s3_bucket_name" {
  length           = 16
  special          = false
}

output "random_s3_bucket_name" {
  value = random_string.s3_bucket_name.result
}