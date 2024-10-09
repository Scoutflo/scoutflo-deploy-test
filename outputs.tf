# Copyright (c) HashiCorp, Inc.
# SPDX-License-Identifier: MPL-2.0

output "cluster_endpoint" {
  description = "Endpoint for EKS control plane"
  value       = module.eks.cluster_endpoint
}

output "cluster_security_group_id" {
  description = "Security group ids attached to the cluster control plane"
  value       = module.eks.cluster_security_group_id
}

output "region" {
  description = "AWS region"
  value       = var.region
}

output "cluster_name" {
  description = "Kubernetes Cluster Name"
  value       = module.eks.cluster_name
}

output "vpc_name" {
  description = "AWS VPC Name"
  value       = module.vpc.name
}

output "instance_type" {
  description = "EC2 instance type"
  value       = local.instance_type
}

output "min_nodes" {
  description = "Min number of nodes"
  value       = local.min_size
}

output "max_nodes" {
  description = "Max number of nodes"
  value       = local.max_size
}

output "desired_nodes" {
  description = "Desired number of nodes"
  value       = local.desired_size
}

output "public_nats_ips" {
  description = "Public NATS IPs"
  value       = aws_instance.nats[*].public_ip
}

output "private_nats_ips" {
  description = "Private NATS IPs"
  value       = aws_instance.nats[*].private_ip
}

output "k8s_version" {
  description = "Kubernetes version"
  value       = aws_eks_cluster.eks_cluster.version
}

output "cidr_range" {
  description = "CIDR Range"
  value       = aws_vpc.main.cidr_block
}

output "aws_account_id" {
  description = "AWS Account ID"
  value       = data.aws_caller_identity.current.account_id
}

output "vpc_name" {
  description = "VPC Name"
  value       = aws_vpc.main.tags["Name"]
}

output "subnet_ids" {
  description = "Subnet IDs"
  value       = aws_subnet.subnets[*].id
}
