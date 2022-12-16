terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 4.0"
    }
  }
}

provider "aws" {
  region = local.region
}

# Create a VPC
resource "aws_vpc" "example" {
  cidr_block = local.vpc_cidr
}