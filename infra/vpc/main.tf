terraform {
  backend "s3" {}
}
provider "aws" {
  region = "us-west-2"
}

module "vpc" {
  source  = "../../modules/vpc"
}