terraform {
  backend "s3" {}
}

provider "aws" {
  region = "us-west-2"
}

module "vpc" {
  source                             = "../../modules/vpc"
  region                             = var.region
  vpc_cidr_block                     = var.vpc_cidr_block
  instance_tenancy                   = var.instance_tenancy
  enable_dns_support                 = var.enable_dns_support
  enable_dns_hostnames               = var.enable_dns_hostnames
  destination_cidr_block             = var.destination_cidr_block
  map_public_ip_on_launch            = var.map_public_ip_on_launch
  public_subnet_cidr_blocks          = var.public_subnet_cidr_blocks
  app_subnet_cidr_blocks             = var.app_subnet_cidr_blocks
  db_subnet_cidr_blocks              = var.db_subnet_cidr_blocks
  management_subnet_cidr_blocks      = var.management_subnet_cidr_blocks
  platform_subnet_cidr_blocks        = var.platform_subnet_cidr_blocks
  availability_zones                 = var.availability_zones
  create_s3_endpoint                 = var.create_s3_endpoint
  create_secrets_manager_endpoint    = var.create_secrets_manager_endpoint
  create_cloudwatch_logs_endpoint    = var.create_cloudwatch_logs_endpoint
  ingress_public_nacl_rule_no        = var.ingress_public_nacl_rule_no
  ingress_public_nacl_action         = var.ingress_public_nacl_action
  ingress_public_nacl_from_port      = var.ingress_public_nacl_from_port
  ingress_public_nacl_to_port        = var.ingress_public_nacl_to_port
  ingress_public_nacl_protocol       = var.ingress_public_nacl_protocol
  ingress_public_nacl_cidr_block     = var.ingress_public_nacl_cidr_block
  egress_public_nacl_rule_no         = var.egress_public_nacl_rule_no
  egress_public_nacl_action          = var.egress_public_nacl_action
  egress_public_nacl_from_port       = var.egress_public_nacl_from_port
  egress_public_nacl_to_port         = var.egress_public_nacl_to_port
  egress_public_nacl_protocol        = var.egress_public_nacl_protocol
  egress_public_nacl_cidr_block      = var.egress_public_nacl_cidr_block
  ingress_app_nacl_rule_no           = var.ingress_app_nacl_rule_no
  ingress_app_nacl_action            = var.ingress_app_nacl_action
  ingress_app_nacl_from_port         = var.ingress_app_nacl_from_port
  ingress_app_nacl_to_port           = var.ingress_app_nacl_to_port
  ingress_app_nacl_protocol          = var.ingress_app_nacl_protocol
  ingress_app_nacl_cidr_block        = var.ingress_app_nacl_cidr_block
  egress_app_nacl_rule_no            = var.egress_app_nacl_rule_no
  egress_app_nacl_action             = var.egress_app_nacl_action
  egress_app_nacl_from_port          = var.egress_app_nacl_from_port
  egress_app_nacl_to_port            = var.egress_app_nacl_to_port
  egress_app_nacl_protocol           = var.egress_app_nacl_protocol
  egress_app_nacl_cidr_block         = var.egress_app_nacl_cidr_block
  ingress_db_nacl_rule_no            = var.ingress_db_nacl_rule_no
  ingress_db_nacl_action             = var.ingress_db_nacl_action
  ingress_db_nacl_from_port          = var.ingress_db_nacl_from_port
  ingress_db_nacl_to_port            = var.ingress_db_nacl_to_port
  ingress_db_nacl_protocol           = var.ingress_db_nacl_protocol
  ingress_db_nacl_cidr_block         = var.ingress_db_nacl_cidr_block
  egress_db_nacl_rule_no             = var.egress_db_nacl_rule_no
  egress_db_nacl_action              = var.egress_db_nacl_action
  egress_db_nacl_from_port           = var.egress_db_nacl_from_port
  egress_db_nacl_to_port             = var.egress_db_nacl_to_port
  egress_db_nacl_protocol            = var.egress_db_nacl_protocol
  egress_db_nacl_cidr_block          = var.egress_db_nacl_cidr_block
  ingress_management_nacl_rule_no    = var.ingress_management_nacl_rule_no
  ingress_management_nacl_action     = var.ingress_management_nacl_action
  ingress_management_nacl_from_port  = var.ingress_management_nacl_from_port
  ingress_management_nacl_to_port    = var.ingress_management_nacl_to_port
  ingress_management_nacl_protocol   = var.ingress_management_nacl_protocol
  ingress_management_nacl_cidr_block = var.ingress_management_nacl_cidr_block
  egress_management_nacl_rule_no     = var.egress_management_nacl_rule_no
  egress_management_nacl_action      = var.egress_management_nacl_action
  egress_management_nacl_from_port   = var.egress_management_nacl_from_port
  egress_management_nacl_to_port     = var.egress_management_nacl_to_port
  egress_management_nacl_protocol    = var.egress_management_nacl_protocol
  egress_management_nacl_cidr_block  = var.egress_management_nacl_cidr_block
  ingress_platform_nacl_rule_no      = var.ingress_platform_nacl_rule_no
  ingress_platform_nacl_action       = var.ingress_platform_nacl_action
  ingress_platform_nacl_from_port    = var.ingress_platform_nacl_from_port
  ingress_platform_nacl_to_port      = var.ingress_platform_nacl_to_port
  ingress_platform_nacl_protocol     = var.ingress_platform_nacl_protocol
  ingress_platform_nacl_cidr_block   = var.ingress_platform_nacl_cidr_block
  egress_platform_nacl_rule_no       = var.egress_platform_nacl_rule_no
  egress_platform_nacl_action        = var.egress_platform_nacl_action
  egress_platform_nacl_from_port     = var.egress_platform_nacl_from_port
  egress_platform_nacl_to_port       = var.egress_platform_nacl_to_port
  egress_platform_nacl_protocol      = var.egress_platform_nacl_protocol
  egress_platform_nacl_cidr_block    = var.egress_platform_nacl_cidr_block
  owner                              = var.owner
  environment                        = var.environment
  cost_center                        = var.cost_center
  application                        = var.application
}