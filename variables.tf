variable "cidr_vpc" {
  description = "CIDR block for the VPC"
  default     = "172.31.0.0/16"
}

variable "cidr_subnet" {
  description = "CIDR block for the subnet"
  default     = "172.31.0.0/20"
}

variable "admin_public_ip" {
  description = "CIDR block for the subnet"
  type        = string
}

variable "environment_tag" {
  description = "Environment tag"
  default     = "Learn"
}

variable "aws_region" {
  description = "The AWS region to deploy your instance"
  default     = "eu-west-2"
}

variable "user_name" {
  description = "The user creating this infrastructure"
  default     = "terraform"
}

variable "user_department" {
  description = "The organization the user belongs to: dev, prod, qa"
  default     = "learn"
}

variable "ec2_instance_type" {
  description = "AWS EC2 instance type."
  type        = string
  default     = "t2.micro"
}

variable "key_pair_name" {
  description = "AWS key pair name"
  type        = string
}

variable "aws_amis" {
  type = map(any)
  default = {
    "us-east-1" = "ami-0739f8cdb239fe9ae"
    "us-west-2" = "ami-008b09448b998a562"
    "us-east-2" = "ami-0ebc8f6f580a04647"
    "eu-west-2" = "ami-09a2a0f7d2db8baca"
  }
}
