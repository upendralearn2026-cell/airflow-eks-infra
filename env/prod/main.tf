module "vpc" {
  source = "../../modules/vpc"

  vpc_name = var.vpc_name
  cidr     = var.vpc_cidr
  azs      = var.azs
}

module "eks" {
  source = "../../modules/eks"

  cluster_name    = var.cluster_name
  cluster_version = var.cluster_version
  vpc_id          = module.vpc.vpc_id
  private_subnets = module.vpc.private_subnets
  node_instance_type = var.node_instance_type
  desired_size    = var.desired_size
  min_size        = var.min_size
  max_size        = var.max_size
}

module "rds" {
  source = "../../modules/rds"

  db_name     = var.db_name
  db_username = var.db_username
  db_password = var.db_password
  db_subnet_group = module.vpc.database_subnet_group
  vpc_id = module.vpc.vpc_id
}

module "s3" {
  source = "../../modules/s3"

  bucket_name = var.dags_bucket_name
}