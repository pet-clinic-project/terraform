variable "region" {
  type        = string
  description = "The AWS region where the Certificate Manager will be used."
}

variable "hosted_zone_name" {
  type        = string
  description = "The name of the Route 53 hosted zone to associate with your AWS resources."
}

variable "private_zone" {
  type        = bool
  description = "Set to true for a private hosted zone, false for a public hosted zone."
}

variable "dns_record_type" {
  type        = string
  description = "The DNS record type for your Route 53 records (e.g., A, CNAME)."
}

variable "dns_record_ttl" {
  type        = number
  description = "Time to Live (TTL) for DNS records in seconds, specifying the cache duration."
}

variable "resource_names" {
  type        = map(string)
  description = "A map of resource names associated with the AWS resources."
}

variable "resource_ips" {
  type        = map(string)
  description = "A map of resource IP addresses or values associated with the AWS resources."
}

