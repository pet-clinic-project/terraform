provider "aws" {
  region = var.region
}

terraform {
  backend "s3" {}
}

module "rds" {
  source                      = "../../modules/rds"
  region                      = var.region
  vpc_id                      = var.vpc_id
  subnet_ids                  = var.subnet_ids
  db_engine                   = var.db_engine
  db_storage_type             = var.db_storage_type
  db_username                 = var.db_username
  set_secret_manager_password = var.set_secret_manager_password
  set_db_password             = var.set_db_password
  db_password                 = var.db_password
  db_instance_class           = var.db_instance_class
  db_storage_size             = var.db_storage_size
  ingress_from_port           = var.ingress_from_port
  ingress_to_port             = var.ingress_to_port
  ingress_protocol            = var.ingress_protocol
  ingress_cidr_blocks         = var.ingress_cidr_blocks
  egress_from_port            = var.egress_from_port
  egress_to_port              = var.egress_to_port
  egress_protocol             = var.egress_protocol
  egress_cidr_blocks          = var.egress_cidr_blocks
  backup_retention_period     = var.backup_retention_period
  multi_az                    = var.multi_az
  delete_automated_backups    = var.delete_automated_backups
  copy_tags_to_snapshot       = var.copy_tags_to_snapshot
  publicly_accessible         = var.publicly_accessible
  skip_final_snapshot         = var.skip_final_snapshot
  apply_immediately           = var.apply_immediately
  parameter_store_secret_name = var.parameter_store_secret_name
  type                        = var.type
  overwrite                   = var.overwrite
  owner                       = var.owner
  cost_center                 = var.cost_center
  environment                 = var.environment
  application                 = var.application
}