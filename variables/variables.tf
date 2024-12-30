variable "region" {
  default = "us-west-2"
}

variable "cluster_name" {
  default = "my_eks_cluster"
}

variable "eks_version" {
  default = "1.28"
}

variable "instance_type" {
  default = "t3.medium"
}

variable "key_name" {
  description = "Name of the key pair to access EC2 instances"
  default     = "your-key-pair"
}

variable "cluster_security_group_id" {
  description = "The security group ID for the EKS cluster"
  type        = string
}