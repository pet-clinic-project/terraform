variable "ami_id" {
  type = string
  description = "Jenkins Agent AMI ID"
  default     = "ami-0e8ffa060937e44c7"
}

variable "instance_type" {
  type = string
  description = "EC2 instance type for Jenkins agent"
  default     = "t2.medium"
}

variable "key_name" {
  type = string
  description = "Key for Jenkins agent"
  default     = "aswin-key"
}

variable "vpc_id" {
  type = string
  description = "Key for Jenkins agent"
  default     = "vpc-0a5ca4a92c2e10163"
}

variable "subnet_id" {
  type    = string
  default = "subnet-058a7514ba8adbb07"
}