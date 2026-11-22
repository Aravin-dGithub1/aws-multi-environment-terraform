
module "qa_vpc" {
  source = "../../modules/vpc"

  environment          = "qa"
  project_name         = "aws-multi-environment-terraform"
  vpc_cidr             = var.vpc_cidr
  availability_zones   = var.availability_zones
  public_subnet_cidrs  = var.public_subnet_cidrs
  private_subnet_cidrs = var.private_subnet_cidrs
}

variable "vpc_cidr" {
  description = "QA VPC CIDR"
  type        = string
}

variable "availability_zones" {
  description = "QA availability zones"
  type        = list(string)
}

variable "public_subnet_cidrs" {
  description = "QA public subnet CIDRs"
  type        = list(string)
}

variable "private_subnet_cidrs" {
  description = "QA private subnet CIDRs"
  type        = list(string)
}

output "vpc_id" {
  value = module.qa_vpc.vpc_id
}

output "public_subnet_ids" {
  value = module.qa_vpc.public_subnet_ids
}

output "private_subnet_ids" {
  value = module.qa_vpc.private_subnet_ids
}

output "internet_gateway_id" {
  value = module.qa_vpc.internet_gateway_id
}