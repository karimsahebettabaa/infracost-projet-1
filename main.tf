provider "aws" {
  region = var.region
}

module "eks" {
  source          = "terraform-aws-modules/eks/aws"
  cluster_name    = var.eks_cluster_name
  cluster_version = "1.29"
  subnets         = var.subnets
  vpc_id          = var.vpc_id

  node_groups = {
    eks_nodes = {
      desired_capacity = 2
      max_capacity     = 4
      min_capacity     = 1

      instance_types = ["t3.medium"]
      key_name       = var.key_name
    }
  }

  tags = {
    Environment = var.environment
  }
}
