terraform {
  backend "s3" {}
}

provider "aws" {
  region = "us-west-2"
}

module "vpc" {
  source  = "../../modules/vpc"
  name                          = var.name
  region                        = var.region
  owner                         = var.owner
  cost_center                   = var.cost_center
  environment                   = var.environment
  vpc_cidr_block                = var.vpc_cidr_block
  public_subnet_cidr_blocks     = var.public_subnet_cidr_blocks
  app_subnet_cidr_blocks        = var.app_subnet_cidr_blocks
  db_subnet_cidr_blocks         = var.db_subnet_cidr_blocks
  management_subnet_cidr_blocks = var.management_subnet_cidr_blocks
  availability_zones            = var.availability_zones
}