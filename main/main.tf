provider "aws" {
  region = var.region
}

output "vpc_id" {
  value = var.vpc_id
}

output "subnets" {
  value = var.subnet_ids
}


output "cluster_endpoint" {
  value = aws_eks_cluster.my_eks_cluster.endpoint
}


