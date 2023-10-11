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

# variable "acm_certificate_arn" {
#   description = "ARN of the ACM SSL certificates"
#   type        = string
# }

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

variable "ami_id" {
  type        = string
  description = "The ID of the Amazon Machine Image (AMI) to use for the EC2 instances."
}

variable "instance_type" {
  type        = string
  description = "The type of EC2 instance to use for the ASG."
}

variable "key_name" {
  type        = string
  description = "The name of the EC2 key pair to use for the instances."
}

variable "vpc_id" {
  type        = string
  description = "The ID of the VPC to use for the resources."
}

variable "asg_subnets" {
  description = "A list of subnet IDs to use for the resources."
  type        = list(string)
}

variable "public_access" {
  description = "Whether the instance is public or not"
  type        = bool
}

variable "user_data" {
  description = "user data script"
  type        = string
}

variable "max_size" {
  description = "Maximum size of something"
  type        = number
}

variable "min_size" {
  description = "Minimum size of something"
  type        = number
}

variable "desired_capacity" {
  description = "Desired capacity of something"
  type        = number
}

variable "propagate_at_launch" {
  description = "To enable ot disable propagate_at_launch"
  type        = bool
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

variable "ingress_cidr_block" {
  type        = list(string)
  description = "CIDR blocks for the security group ingress rules"
}

variable "ingress_cidr_from_port" {
  description = "The starting port for ingress rules"
  type        = list(number)
}

variable "ingress_cidr_to_port" {
  description = "The ending port for ingress rules"
  type        = list(number)
}

variable "ingress_cidr_protocol" {
  description = "The protocol for ingress rules"
  type        = list(any)
}

variable "create_ingress_cidr" {
  description = "Whether to create the ingress cidr or not"
  type        = bool
}

variable "ingress_sg_from_port" {
  type        = list(number)
  description = "List of starting ports for sg ingress rules"
}

variable "ingress_sg_to_port" {
  type        = list(number)
  description = "List of ending ports for sg ingress rules"
}

variable "ingress_sg_protocol" {
  type        = list(any)
  description = "List of protocols for sg ingress rules"
}

variable "ingress_security_group_ids" {
  type        = list(string)
  default     = ["sg-0fe4363da3994c100"]
  description = "List of Security Group ids for sg ingress rules"
}

variable "create_ingress_sg" {
  type        = bool
  description = "Enable or disable Security Groups ingress rules."
}

variable "egress_cidr_block" {
  type        = list(string)
  description = "CIDR blocks for group egress rules"
}

variable "egress_cidr_from_port" {
  description = "The starting port for egress rules"
  type        = list(number)
}

variable "egress_cidr_to_port" {
  description = "The ending port for egress rules"
  type        = list(number)
}

variable "egress_cidr_protocol" {
  description = "The protocol for egress rules"
  type        = list(any)
}

variable "create_egress_cidr" {
  type        = bool
  description = "Enable or disable CIDR block egress rules."
}

variable "egress_sg_from_port" {
  description = "The starting port for egress rules"
  type        = list(number)
}

variable "egress_sg_to_port" {
  description = "The ending port for egress rules"
  type        = list(number)
}

variable "egress_sg_protocol" {
  description = "The protocol for egress rules"
  type        = list(any)
}

variable "egress_security_group_ids" {
  type        = list(string)
  default     = ["sg-0fe4363da3994c100"]
  description = "List of Security Group ids for sg egress rules"
}

variable "create_egress_sg" {
  type        = bool
  description = "Enable or disable CIDR block egress rules."
}


variable "alb_ingress_cidr_block" {
  type        = list(string)
  description = "CIDR blocks for the security group ingress rules"
}

variable "alb_ingress_cidr_from_port" {
  description = "The starting port for ingress rules"
  type        = list(number)
}

variable "alb_ingress_cidr_to_port" {
  description = "The ending port for ingress rules"
  type        = list(number)
}

variable "alb_ingress_cidr_protocol" {
  description = "The protocol for ingress rules"
  type        = list(any)
}

variable "alb_create_ingress_cidr" {
  description = "Whether to create the ingress cidr or not"
  type        = bool
}

variable "alb_ingress_sg_from_port" {
  type        = list(number)
  description = "List of starting ports for sg ingress rules"
}

variable "alb_ingress_sg_to_port" {
  type        = list(number)
  description = "List of ending ports for sg ingress rules"
}

variable "alb_ingress_sg_protocol" {
  type        = list(any)
  description = "List of protocols for sg ingress rules"
}

variable "alb_create_ingress_sg" {
  type        = bool
  description = "Enable or disable Security Groups ingress rules."
}

variable "alb_egress_cidr_block" {
  type        = list(string)
  description = "CIDR blocks for the security group egress rules"
}

variable "alb_egress_cidr_from_port" {
  description = "The starting port for egress rules"
  type        = list(number)
}

variable "alb_egress_cidr_to_port" {
  description = "The ending port for egress rules"
  type        = list(number)
}

variable "alb_egress_cidr_protocol" {
  description = "The protocol for egress rules"
  type        = list(any)
}

variable "alb_create_egress_cidr" {
  type        = bool
  description = "Enable or disable CIDR block egress rules."
}

variable "alb_egress_sg_from_port" {
  description = "The starting port for egress rules"
  type        = list(number)
}

variable "alb_egress_sg_to_port" {
  description = "The ending port for egress rules"
  type        = list(number)
}

variable "alb_egress_sg_protocol" {
  description = "The protocol for egress rules"
  type        = list(any)
}

variable "alb_create_egress_sg" {
  type        = bool
  description = "Enable or disable CIDR block egress rules."
}

variable "instance_warmup_time" {
  description = "Time required to warm up a new instance"
  type        = number
}

variable "target_value" {
  description = "Threshold value of asg to start scaling"
  type        = number
}

variable "domain_name" {
  type        = string
  description = "The domain name associated with the SSL/TLS certificate."
}

variable "validation_method" {
  type        = string
  description = "The validation method used for certificate issuance (e.g., DNS, email)."
}

variable "key_algorithm" {
  type        = string
  description = "The cryptographic key algorithm used for the certificate (e.g., RSA, ECDSA)."
}

variable "certificate_transparency_logging_preference" {
  type        = string
  description = "The logging preference for certificate transparency (e.g., 'ENABLED' or 'DISABLED')."
}

variable "dns_private_zone" {
  type        = bool
  description = "Indicates whether the DNS zone is private (true) or public (false)."
}

variable "acm_dns_record_overwrite" {
  type        = bool
  description = "Determines whether existing DNS records should be overwritten (true) or preserved (false)."
}

variable "acm_dns_record_ttl" {
  type        = number
  description = "Time to Live (TTL) for DNS records in seconds, specifying how long the records are cached by DNS resolvers."
}

variable "dns_domain_name" {
  type        = string
  description = "Domain name of the Route 53"
}

variable "iam_policy_json_file" {
  type        = string
  description = "Name of the json file"
}