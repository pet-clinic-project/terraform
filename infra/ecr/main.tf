provider "aws" {
  region = var.region
}

# Declare the state lock module
module "ecr" {
  source            = "../../modules/ecr"
  region            = var.region
  repository_names  = var.repository_names
  image_mutability  = var.image_mutability
  owner             = var.owner
  environment       = var.environment
  cost_center       = var.cost_center
  application       = var.application
}