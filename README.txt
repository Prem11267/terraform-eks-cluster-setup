# Terraform EKS Cluster Setup

This repository contains Terraform code to provision an Amazon Elastic Kubernetes Service (EKS) cluster with its associated resources on AWS. The setup is designed to utilize an existing VPC and subnets.

---

## Features

- **Amazon EKS Cluster**:
  - Deploys an EKS cluster with version `1.28`.
  - Configurable cluster security group and role ARN.
  
- **EKS Node Group**:
  - Creates a managed node group with configurable instance types and scaling settings.

- **Outputs**:
  - VPC ID
  - Subnets
  - EKS Cluster endpoint
  - EKS Cluster name

---

## Prerequisites

1. **AWS CLI** installed and configured with appropriate credentials.
2. **Terraform** version `>=1.0` installed.
3. An existing VPC and private subnets for deploying the EKS cluster and node group.
4. IAM roles with required permissions:
   - `MyEKSRole` for the EKS cluster.
   - `EKSNodeGroupRole` for the node group.

---

## Usage

### 1. Initialize Terraform
Run the following command to initialize Terraform and download the required providers:
```bash
terraform init
