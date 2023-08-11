variable "tags" {
  default     = {}
  type        = map(string)
  description = "Extra tags to attach to the Nexus resources"
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
  description = "Nexus AMI ID"
}

variable "instance_type" {
  type = string
  description = "EC2 instance type for nexus"
}

variable "instance_count" {
  type    = number
  description = "EC2 instance count for nexus"
}

variable "key_name" {
  type = string
  description = "Key for nexus"
}

variable "vpc_id" {
  type = string
  description = "VPC id for nexus"
}

variable "subnet_ids" {
  type    = list(string)
  description = "Subnet id for nexus"
}