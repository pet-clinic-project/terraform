output "record_fqdn" {
  description = "Fully-qualified domain name (FQDN) of the created Route 53 record."
  value = {
    for key, dns_record in aws_route53_record.server_dns_record :
    key => dns_record.fqdn
  }
}

