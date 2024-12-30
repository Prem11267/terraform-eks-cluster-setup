variable "vpc_id" {
  description = "ID of the existing custom VPC"
  default     = "vpc-0613a06765da9e83d"
}

variable "subnet_ids" {
  description = "List of existing private subnet IDs for EKS Cluster and node group"
  default     = ["subnet-0688f5728f558dc98", "subnet-00d6cc03f933c557a"]
}

data "aws_vpc" "psk_vpc" {
  id = var.vpc_id
}

# Define the subnets as data sources
data "aws_subnet" "subnet1" {
  id = var.subnet_ids[0]
}

data "aws_subnet" "subnet2" {
  id = var.subnet_ids[1]
}

#output "vpc_id" {
#  value = data.aws_vpc.psk_vpc.id
#}

output "subnet_ids" {
  value = [data.aws_subnet.subnet1.id, data.aws_subnet.subnet2.id]
}