# Set the required provider and versions
terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "4.5.0"
    }
  }
}

# ------------------
# AWS provide define
# ------------------
provider "aws" {
  region = var.region
}