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

output "k8s_version" {
  description = "Kubernetes version"
  value       = module.eks.cluster_version
}

output "cidr_range" {
  description = "CIDR Range"
  value       = module.vpc.vpc_cidr_block
}

output "aws_account_id" {
  description = "AWS Account ID"
  value       = data.aws_caller_identity.current.account_id
}

output "subnet_ids" {
  description = "Subnet IDs"
  value       = module.vpc.private_subnets
}

output "cluster_ingress_endpoint" {
  description = "Ingress endpoint for EKS cluster"
  value       = try(module.eks.cluster_endpoint)
}

output "cluster_egress_endpoint" {
  description = "Egress endpoint for EKS cluster"
  value       = try(module.eks.cluster_endpoint)
}

/*
output "nginx_ingress_controller_ip" {
  value       = length(helm_release.nginx_ingress.status) > 0 && length(helm_release.nginx_ingress.status[0].load_balancer) > 0 ? helm_release.nginx_ingress.status[0].load_balancer[0].ingress[0].ip : "Not Available"
  description = "The IP address of the NGINX Ingress Controller LoadBalancer."
}
*/
/*
output "cert_manager_status" {
  value       = helm_release.cert_manager.status
  description = "Status of the Cert Manager deployment."
}
*/
