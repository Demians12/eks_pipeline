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

terraform {
  backend "s3" {
    bucket         = "pipeline-source-test-workshop10"
    key            = "terraform.tfstate"
    region         = "us-east-1"
    dynamodb_table = "pipeline-source-test-workshop10"
  }
}