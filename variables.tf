variable "aws_region" {
  default = "ap-southeast-2"
}

variable "project_name" {
  default = "cloudops"
}

variable "vpc_cidr" {
  default = "10.0.0.0/16"
}

variable "public_subnet_cidr" {
  default = "10.0.1.0/24"
}

variable "private_subnet_cidr" {
  default = "10.0.2.0/24"
}

variable "instance_type" {
  default = "t3.micro"
}

variable "alert_email" {
  description = "Email for CloudWatch alerts"
  type        = string
}