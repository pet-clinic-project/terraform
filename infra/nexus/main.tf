provider "aws" {
  region = var.region
}

module "nexus" {
    source = "../../modules/nexus"
    region        = var.region
    owner         = var.owner
    environment   = var.environment
    cost_center   = var.cost_center
    ami_id        = var.ami_id
    instance_type = var.instance_type
    instance_count= var.instance_count
    key_name      = var.key_name
    vpc_id        = var.vpc_id
    subnet_ids    = var.subnet_ids
}
