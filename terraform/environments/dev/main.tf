module "vpc" {
  source = "../../modules/vpc"

  environment = "dev"
  vpc_cidr    = "10.0.0.0/16"

  azs = [
    "us-east-1a",
    "us-east-1b"
  ]
}

module "iam" {
  source = "../../modules/iam"
}

module "eks" {
  source = "../../modules/eks"

  cluster_name    = "dev-eks-cluster"
  environment     = "dev"
  private_subnets = module.vpc.private_subnets

  cluster_role_arn = module.iam.cluster_role_arn
  node_role_arn    = module.iam.worker_role_arn

  cluster_policy_attachment = module.iam.cluster_policy_attachment
  worker_policy_attachment  = module.iam.worker_policy_attachment
}