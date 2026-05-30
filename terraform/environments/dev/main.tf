module "vpc" {
  #source = "../../modules/vpc"
  source = "git::https://github.com/shvkmr536/terraform-aws-module.git//modules/vpc?ref=main"

  environment = var.environment
  vpc_cidr    = var.vpc_cidr

  azs = ["${var.azs[0]}", "${var.azs[1]}"]
}

module "ecr" {
  source = "git::https://github.com/shvkmr536/terraform-aws-module.git//modules/ecr?ref=main"

  environment = var.environment
  ecr_name    = var.ecr_name
}

module "eks" {
  source = "git::https://github.com/shvkmr536/terraform-aws-module.git//modules/eks?ref=main"

  private_subnets = module.vpc.private_subnet_ids
  platform        = var.platform
  team            = var.team
  environment     = var.environment
}