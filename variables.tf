variable "cluster_name" {
  type        = string
  description = "Name of the cluster."
  default     = "myexample"
}

variable "owner" {
  type        = string
  description = "Owner tag on all resources."
  default     = "myuser"
}

variable "aws_region" {
  type    = string
  default = "eu-central-1"
}

variable "aws_azs" {
  type        = list
  description = "List of the availability zones to use."
  default     = ["eu-central-1a", "eu-central-1b", "eu-central-1c"]
}

variable "aws_cidr" {
  description = "The CIDR block for the VPC."
  type        = string
  default     = "10.0.0.0/16"
}

variable "aws_private_subnets" {
  description = "A list of private subnets inside the VPC"
  type        = list(string)
  default     = ["10.0.1.0/24", "10.0.2.0/24", "10.0.3.0/24"]
}

variable "aws_public_subnets" {
  description = "A list of public subnets inside the VPC"
  type        = list(string)
  default     = ["10.0.101.0/24", "10.0.102.0/24", "10.0.103.0/24"]
}