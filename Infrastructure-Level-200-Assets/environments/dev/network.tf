terraform {
  required_version = ">= 1.6.0"

  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.0"
    }
  }
}

provider "aws" {
  region = var.aws_region

  skip_credentials_validation = true
  skip_metadata_api_check     = true
  skip_requesting_account_id  = true
}

variable "aws_region" {
  type    = string
  default = "us-east-1"
}

variable "vpc_id" {
  type = string
}

variable "private_subnet_ids" {
  type = list(string)
}

variable "private_route_table_ids" {
  type = list(string)
}

module "network" {
  source = "../../modules/network"

  name                    = "catalog-dev"
  aws_region              = var.aws_region
  vpc_id                  = var.vpc_id
  private_subnet_ids      = var.private_subnet_ids
  private_route_table_ids = var.private_route_table_ids

  tags = {
    Environment = "dev"
    Owner       = "platform"
  }
}
