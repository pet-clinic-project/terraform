variable "name" {
  type    = string
  description = "Name of the VPC"
}

variable "region" {
  type    = string
  description = "Region of the VPC"
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
  type    = string
  description = "Name of environment this VPC is targeting"
}

variable "vpc_cidr_block" {
  type    = string
  description = "CIDR block for the VPC"
}

variable "public_subnet_cidr_blocks" {
  type    = list(string)
  description = "List of public subnet CIDR blocks"
}

variable "app_subnet_cidr_blocks" {
  type    = list(string)
  description = "List of application subnet CIDR blocks"
}

variable "db_subnet_cidr_blocks" {
  type    = list(string)
  description = "List of Database subnet CIDR blocks"
}

variable "management_subnet_cidr_blocks" {
  type    = list(string)
  description = "List of management subnet CIDR blocks"
}

variable "availability_zones" {
  type    = list(string)
  description = "List of availability zones"
}
