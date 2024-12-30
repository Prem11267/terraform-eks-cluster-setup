resource "aws_eks_cluster" "my_eks_cluster" {
  name     = var.cluster_name
  role_arn = "arn:aws:iam::025066287072:role/MyEKSRole"

  vpc_config {
    subnet_ids = var.subnet_ids
  }

  version = var.eks_version
}

resource "aws_eks_node_group" "eks_nodes" {
  cluster_name    = aws_eks_cluster.my_eks_cluster.name
  node_group_name = "eks-node-group"
  subnet_ids      = var.subnet_ids
  node_role_arn   = "arn:aws:iam::025066287072:role/EKSNodeGroupRole"


  scaling_config {
    desired_size = 2
    max_size     = 2
    min_size     = 2
  }

  instance_types = [var.instance_type]

  tags = {
    Name = "eks-node-group"
  }
}

output "cluster_name" {
  value = aws_eks_cluster.my_eks_cluster.name
}

