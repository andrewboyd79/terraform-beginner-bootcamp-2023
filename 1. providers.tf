terraform {
  backend "remote" {
    organization = "andrewboyd79" # org name from step 2.
    workspaces {
      name = "Terrahouse-example" # name for your app's state.
    }
  }
  required_providers {
    random = {
      source  = "hashicorp/random"
      version = "3.5.1"
    }

    aws = {
      source  = "hashicorp/aws"
      version = "5.18.1"
    }
  }
}

provider "random" {
  # Configuration options
}

provider "aws" {
  region = var.region
}
