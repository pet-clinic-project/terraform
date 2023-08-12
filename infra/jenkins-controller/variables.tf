variable "tags" {
  default     = {}
  type        = map(string)
  description = "Extra tags to attach to the Jenkins-Controller resources"
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

variable "instance_count" {
  type    = number
  description = "EC2 instance count for Jenkins controller"
}

variable "key_name" {
  type = string
  description = "Key for Jenkins controller"
}

variable "vpc_id" {
  type = string
  description = "Key for Jenkins controller"
}

variable "subnet_ids" {
  type    = list(string)
  description = "subnet ids for Jenkins controller"
}

variable "associate_public_ip_address" {
  type        = bool
  description = "Enable or disable public ip address"
}

variable "ingress_cidr_from_port" {
  type        = list(number)
  description = "List of starting ports for cidr ingress rules"
}

variable "ingress_cidr_to_port" {
  type        = list(number)
  description = "List of ending ports for cidr ingress rules"
}

variable "ingress_cidr_protocol" {
  type        = list(string)
  description = "List of protocols for cidr ingress rules "
}

variable "ingress_cidr_block" {
  type        = list(string)
  description = "List of CIDR blocks for cidr ingress rules"
}

variable "egress_cidr_from_port" {
  type        = list(number)
  description = "List of starting ports for cidr egress rules"
}

variable "egress_cidr_to_port" {
  type        = list(number)
  description = "List of ending ports for cidr egress rules"
}

variable "egress_cidr_protocol" {
  type        = list(any)
  description = "List of protocols for cidr egress rules"
}

variable "egress_cidr_block" {
  type        = list(string)
  description = "List of CIDR blocks for cidr egress rules"
}

variable "environment" {
  type        = string
  description = "The environment name for the resources."
}

variable "owner" {
  type        = string
  description = "Owner's name for the resource."
}

variable "cost_center" {
  type        = string
  description = "Cost center identifier for the resource."
}

variable "application" {
  type        = string
  description = "Name of the application related to the resource"
}
