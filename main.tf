# Terraform Block
terraform {
  backend "remote" {
    organization = "andrewboyd79" # org name from step 2.
    workspaces {
      name = "Terrahouse-example" # name for your app's state.
    }
  }
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "5.18.1"
    }
  }
}

# Providers Block
provider "aws" {
  region = var.region
}

module "terrahouse_aws" {
  source = "./modules/terrahouse_aws"
  
}