
module "dev_vpc" {
  source = "../../modules/vpc"

  environment  = "dev"
  project_name = "aws-multi-environment-terraform"

  vpc_cidr             = var.vpc_cidr
  availability_zones   = var.availability_zones
  public_subnet_cidrs  = var.public_subnet_cidrs
  private_subnet_cidrs = var.private_subnet_cidrs
}

variable "vpc_cidr" {
  description = "Dev VPC CIDR"
  type        = string
}

variable "availability_zones" {
  description = "Dev availability zones"
  type        = list(string)
}

variable "public_subnet_cidrs" {
  description = "Dev public subnet CIDRs"
  type        = list(string)
}

variable "private_subnet_cidrs" {
  description = "Dev private subnet CIDRs"
  type        = list(string)
}

output "vpc_id" {
  value = module.dev_vpc.vpc_id
}

output "public_subnet_ids" {
  value = module.dev_vpc.public_subnet_ids
}

output "private_subnet_ids" {
  value = module.dev_vpc.private_subnet_ids
}

output "internet_gateway_id" {
  value = module.dev_vpc.internet_gateway_id
}