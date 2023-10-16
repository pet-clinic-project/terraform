# resource "aws_route53_zone" "hosted_zone" {
#   name = ""
# }

data "aws_route53_zone" "dns_hosted_zone" {
  name         = var.hosted_zone_name
  private_zone = var.private_zone
}


resource "aws_route53_record" "server_dns_record" {
  for_each = var.resource_ips

  zone_id = data.aws_route53_zone.dns_hosted_zone.zone_id
  name    = "${var.resource_names[each.key]}.${data.aws_route53_zone.dns_hosted_zone.name}"
  type    = var.dns_record_type
  ttl     = var.dns_record_ttl
  records = [each.value]
}

