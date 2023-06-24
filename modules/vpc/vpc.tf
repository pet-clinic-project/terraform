resource "aws_vpc" "main" {
  cidr_block           = var.vpc_cidr_block
  instance_tenancy     = "default"
  enable_dns_support   = true
  enable_dns_hostnames = true

  tags = merge(
    {
      Name        = var.name,
      Environment = var.environment,
      Owner       = var.owner,
      CostCenter  = var.cost_center,
      Application = "pet_clinic_vpc"
    },
    var.tags
  )
} 