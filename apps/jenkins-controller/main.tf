provider "aws" {
  region = var.region
}

module "jenkins-controller" {
    source = "../../modules/jenkins-controller"
    region        = var.region
    owner         = var.owner
    environment   = var.environment
    cost_center   = var.cost_center
    ami_id        = var.ami_id
    instance_type = var.instance_type
    key_name      = var.key_name
    vpc_id        = var.vpc_id
    subnet_id     = var.subnet_id
}
