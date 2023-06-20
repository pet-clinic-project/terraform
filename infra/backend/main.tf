provider "aws" {
  region = "us-west-2"
}

# Declare the state lock module
module "backend" {
  source                = "../../modules/backend"
}
