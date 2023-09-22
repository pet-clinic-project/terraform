variable "tags" {
  default     = {}
  type        = map(string)
  description = "Extra tags to attach to the Prometheus resources"
}

variable "owner" {
  type        = string
  description = "Name of owner this VPC is meant to house"
}

variable "cost_center" {
  type        = string
  description = "Name of cost-center for this VPC"
}

variable "environment" {
  type        = string
  description = "Name of environment this VPC is targeting"
}

variable "region" {
  type        = string
  description = "Region of the VPC"
}

variable "ami_id" {
  type = string
  description = "prometheus AMI ID"
}

variable "instance_type" {
  type = string
  description = "EC2 instance type for prometheus"
}

variable "instance_count" {
  type    = number
  description = "EC2 instance count for prometheus"
}

variable "key_name" {
  type = string
  description = "Key for prometheus"
}

variable "vpc_id" {
  type = string
  description = "VPC id for prometheus"
}

variable "subnet_ids" {
  type    = list(string)
  description = "Subnet ids for prometheus"
}