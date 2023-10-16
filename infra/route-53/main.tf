provider "aws" {
  region = var.region
}

module "route-53" {
  source = "../../modules/route-53"
  region = var.region

  hosted_zone_name = var.hosted_zone_name
  private_zone     = var.private_zone
  dns_record_type  = var.dns_record_type
  dns_record_ttl   = var.dns_record_ttl
  resource_names   = var.resource_names
  resource_ips     = var.resource_ips
}  