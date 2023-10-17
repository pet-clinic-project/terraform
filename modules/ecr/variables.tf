variable "tags" {
  default     = {}
  type        = map(string)
  description = "Extra tags to attach to ecr"
}

variable "region" {
  description = "The AWS region where the ECR repository will be created."
  type        = string
}

variable "repository_names" {
  description = "A list of repository names to create in the ECR."
  type        = list(string)
}

variable "image_mutability" {
  description = "The image mutability setting for the ECR repository."
  type        = string
  default     = "MUTABLE"
}

variable "owner" {
  description = "The owner of the ECR repository."
  type        = string
}

variable "environment" {
  description = "The environment for the ECR repository."
  type        = string
}

variable "cost_center" {
  description = "The cost center for the ECR repository."
  type        = string
}

variable "application" {
  description = "The application associated with the ECR repository."
  type        = string
}
