module "eks" {
  source  = "modules/eks/aws"

  cluster_name    = var.cluster_name
  cluster_version = var.cluster_version

  vpc_id     = var.vpc_id
  subnet_ids = var.private_subnets

  eks_managed_node_groups = {
    default = {
      desired_size = var.desired_size
      min_size     = var.min_size
      max_size     = var.max_size

      instance_types = [var.node_instance_type]
    }
  }
}