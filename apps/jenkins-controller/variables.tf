variable "tags" {
  default     = {}
  type        = map(string)
  description = "Extra tags to attach to the Jenkins-Controller resources"
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
  description = "Jenkins controller AMI ID"
}

variable "instance_type" {
  type = string
  description = "EC2 instance type for Jenkins controller"
}

variable "key_name" {
  type = string
  description = "Key for Jenkins controller"
}

variable "vpc_id" {
  type = string
  description = "VPC id for Jenkins controller"
}

variable "subnet_id" {
  type    = string
  description = "Subnet id for Jenkins controller"
}