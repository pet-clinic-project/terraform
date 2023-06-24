variable "ami_id" {
  type = string
  description = "Jenkins AMI ID"
  default     = "ami-0065c2afde789d6c4"
}

variable "instance_type" {
  type = string
  description = "EC2 instance type for Jenkins controller"
  default     = "t2.micro" 
}

variable "key_name" {
  type = string
  description = "Key for Jenkins controller"
  default     = "aswin-key"
}

variable "vpc_id" {
  type = string
  description = "Key for Jenkins controller"
  default     = "vpc-0a5ca4a92c2e10163"
}

variable "subnet_id" {
  type    = string
  default = "subnet-058a7514ba8adbb07"
}