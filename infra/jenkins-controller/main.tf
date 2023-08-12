provider "aws" {
  region         = var.region
}

module "jenkins-controller" {
  source = "../../modules/jenkins-controller"
  region                     = var.region
  ami_id                     = var.ami_id
  instance_type              = var.instance_type
  instance_count             = var.instance_count
  key_name                   = var.key_name
  vpc_id                     = var.vpc_id
  subnet_ids                 = var.subnet_ids
  associate_public_ip_address= var.associate_public_ip_address
  ingress_cidr_from_port     = var.ingress_cidr_from_port
  ingress_cidr_to_port       = var.ingress_cidr_to_port
  ingress_cidr_protocol      = var.ingress_cidr_protocol
  ingress_cidr_block         = var.ingress_cidr_block
  egress_cidr_from_port      = var.egress_cidr_from_port
  egress_cidr_to_port        = var.egress_cidr_to_port
  egress_cidr_protocol       = var.egress_cidr_protocol
  egress_cidr_block          = var.egress_cidr_block
  environment                = var.environment
  owner                      = var.owner
  cost_center                = var.cost_center
  application                = var.application
}
