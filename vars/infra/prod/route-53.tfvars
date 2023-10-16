region = "us-west-2"

resource_names = {
  prometeus = "prometeus"
  nexus     = "nexus"
  grafana   = "grafana"
}

resource_ips = {
  prometeus = "10.0.0.1"
  nexus     = "10.0.0.2"
  grafana   = "10.0.0.3"
}

hosted_zone_name = "devopsproject.dev"
private_zone     = false
dns_record_type  = "A"
dns_record_ttl   = 300


