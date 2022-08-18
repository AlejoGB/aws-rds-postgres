terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
    }
  }
  # cloud {
  #   organization = "p41"

  #   workspaces {
  #     name = "gh-actions-foundry"
  #   }
  # }
}

provider "aws" {
  region = "us-east-1"
}