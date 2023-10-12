variable "tags" {
  default     = {}
  type        = map(string)
  description = "Extra tags to attach to the alb-asg resources"
}

variable "region" {
  type        = string
  description = "Region of the alb-asg"
}

variable "internal" {
  description = "Whether the load balancer is internal or not"
  type        = bool
}

variable "loadbalancer_type" {
  description = "Load balancer type"
  type        = string
}

variable "security_group_ids" {
  type        = list(string)
  description = "Security group id of the ec2 instance"
}

variable "vpc_id" {
  type        = string
  description = "The ID of the VPC to use for the resources."
}

variable "alb_subnets" {
  description = "A list of subnet IDs to use for the resources."
  type        = list(string)
}

variable "target_group_port" {
  description = "Target group port"
  type        = number
}

variable "target_group_protocol" {
  description = "Target group protocol"
  type        = string
}

variable "target_type" {
  description = "Target type"
  type        = string
}

variable "load_balancing_algorithm" {
  description = "Specify the load balancing algorithm type"
  type        = string
}

variable "health_check_path" {
  description = "Health check path"
  type        = string
}

variable "health_check_port" {
  description = "Health check port"
  type        = number
}

variable "health_check_protocol" {
  description = "Health check protocol"
  type        = string
}

variable "health_check_interval" {
  description = "Health check interval"
  type        = number
}

variable "health_check_timeout" {
  description = "Health check timeout"
  type        = number
}

variable "health_check_healthy_threshold" {
  description = "Health check healthy threshold"
  type        = number
}

variable "health_check_unhealthy_threshold" {
  description = "Health check unhealthy threshold"
  type        = number
}

variable "http_listener_port" {
  description = "HTTP Listener port"
  type        = number
}

variable "http_listener_protocol" {
  description = "HTTP Listener protocol"
  type        = string
}

variable "http_listener_type" {
  description = "HTTP Listener type"
  type        = string
}

variable "http_redirect_port" {
  description = "HTTP traffic redirect port"
  type        = number
}

variable "http_redirect_protocol" {
  description = "HTTP traffic redirect protocol"
  type        = string
}

variable "http_redirect_status_code" {
  description = "HTTP traffic redirect status code"
  type        = string
}

variable "https_listener_port" {
  description = "HTTPS Listener port"
  type        = number
}

variable "https_listener_protocol" {
  description = "HTTPS Listener protocol"
  type        = string
}

variable "https_listener_ssl_policy" {
  description = "HTTPS Listener SSL policy"
  type        = string
}

variable "acm_certificate_arn" {
  description = "ARN of the ACM SSL certificates"
  type        = string
}

variable "https_listener_type" {
  description = "HTTPS Listener type"
  type        = string
}

variable "dns_record_name" {
  description = "Domain name for the Load balancer."
  type        = string
}

variable "dns_record_type" {
  description = "Type of the ALB DNS record"
  type        = string
}

variable "dns_hosted_zone_id" {
  description = "Hosted zone id of the DNS"
  type        = string
}

variable "name" {
  type        = string
  description = "Name of the resource"
}

variable "owner" {
  type        = string
  description = "Name of owner"
}

variable "environment" {
  type        = string
  description = "The environment name for the resources."
}

variable "cost_center" {
  type        = string
  description = "Name of cost-center for this alb-asg"
}

variable "application" {
  type        = string
  description = "Name of the application"
}
