variable "region" {
  description = "AWS region"
  default     = "us-east-1"
}

variable "instance_type" {
  description = "Type of EC2 instance to provision"
  default     = "t2.micro"
}

variable "instance_name" {
  description = "EC2 instance name"
  default     = "Provisioned by Terraform"
}
/*
variable "default_vpc" {
  description = "default AWS vpc"
  type = string
  sensitive = true
}

variable "default_subnet" {
  description = "default AWS subnet"
  type = string
  sensitive = true
}
*/