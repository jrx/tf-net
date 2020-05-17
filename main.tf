provider "aws" {
  region = var.aws_region
}

terraform {
  required_version = ">= 0.12"
  backend "remote" {}
}

module "vpc" {
  source  = "terraform-aws-modules/vpc/aws"
  version = "~> v2.0"

  name                 = "${var.cluster_name}-vpc"
  cidr                 = var.aws_cidr
  azs                  = var.aws_azs
  private_subnets      = var.aws_private_subnets
  public_subnets       = var.aws_public_subnets
  enable_nat_gateway   = true
  single_nat_gateway   = true
  enable_dns_hostnames = true

  vpc_tags = {
    Name = "${var.cluster_name}-vpc"
  }

  public_subnet_tags = {
    "kubernetes.io/cluster/${var.cluster_name}" = "shared"
    "kubernetes.io/role/elb"                    = "1"
  }

  private_subnet_tags = {
    "kubernetes.io/cluster/${var.cluster_name}" = "shared"
    "kubernetes.io/role/internal-elb"           = "1"
  }

  tags = {
    Owner = var.owner
    # Keep = ""
  }
}