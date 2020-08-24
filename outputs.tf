output "aws_vpc_id" {
  value = module.vpc.vpc_id
}

output "aws_private_subnets" {
  value = module.vpc.private_subnets
}

output "aws_public_subnets" {
  value = module.vpc.public_subnets
}

output "aws_region" {
  value = var.aws_region
}

output "aws_cidr" {
  value = var.aws_cidr
}

output "aws_azs" {
  value = module.vpc.azs
}
