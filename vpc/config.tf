terraform {
  backend "s3" {
    bucket         = "eksdemo1-vpc-terraform-state"
    key            = "terraform/dev/vpc.tfstate"
    region         = "us-east-1"
    dynamodb_table = "eksdemo1-vpc-tfstate-lock-dynamodb"
  }
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 3.31.0"
    }
  }
  required_version = "~> 0.14.5"
}