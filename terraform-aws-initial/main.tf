
provider "aws" {
  region = var.aws_region
}

locals {
  production_availability_zones = ["${var.aws_region}a", "${var.aws_region}b"]
}

module "vpc" {
  source               = "./modules/vpc"
  region               = var.aws_region
  environment          = var.environment
  vpc_cidr             = var.vpc_cidr
  public_subnets_cidr  = var.public_subnets_cidr
  private_subnets_cidr = var.private_subnets_cidr
  db_subnets_cidr      = var.db_subnets_cidr // Check your cidr here: https://cidr.xyz/
  availability_zones   = local.production_availability_zones
}

module "EC2" {
  source    = "./modules/EC2"
  subnet_id = module.vpc.public_subnets_id_a
  vpc_id    = module.vpc.vpc_id
}



################################################################################
# EKS Module
################################################################################

module "EKS" {
  source  = "terraform-aws-modules/eks/aws" // https://registry.terraform.io/modules/terraform-aws-modules/eks/aws/latest
  version = "19.21.0"

  cluster_name                   = var.environment
  cluster_endpoint_public_access = true

  cluster_addons = {
    coredns = {
      most_recent = true
    }
  }

  vpc_id     = module.vpc.vpc_id
  subnet_ids = [module.vpc.public_subnets_id_a, module.vpc.public_subnets_id_b]
  // TODO: check what is intra_subnets later
  # control_plane_subnet_ids = module.vpc.public_subnets_id_b

  # EKS Managed Node Group(s)
  eks_managed_node_group_defaults = {
    ami_type                              = "AL2_x86_64"
    instance_types                        = ["m5.large"]
    attach_cluster_primary_security_group = true
  }

  eks_managed_node_groups = {
    ascode-cluster-wg = {
      min_size     = 1
      max_size     = 2
      desired_size = 1

      instance_types = ["t3.large"]
      capacity_type  = "SPOT"

      tags = {
        ExtraTag = "tu huynh example"
      }
    }
  }
  tags = {
    Example    = var.environment
    GithubRepo = "terraform-aws-eks"
    GithubOrg  = "terraform-aws-modules"
  }
}
