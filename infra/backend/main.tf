provider "aws" {
  region = var.region
}

# Declare the state lock module
module "backend" {
  source         = "../../modules/backend"
  region         = var.region
  billing_mode   = var.billing_mode
  hash_key       = var.hash_key
  attribute_name = var.attribute_name
  attribute_type = var.attribute_type
  owner          = var.owner
  environment    = var.environment
  cost_center    = var.cost_center
  application    = var.application
}

terraform {
  backend "s3" {}
}
