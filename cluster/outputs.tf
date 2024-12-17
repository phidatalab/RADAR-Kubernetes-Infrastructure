output "radar_base_eks_cluster_name" {
  value = module.eks.cluster_name
}

output "radar_base_eks_cluser_endpoint" {
  value = module.eks.cluster_endpoint
}

output "radar_base_eks_cluser_kms_key_arn" {
  value = module.eks.kms_key_arn
}

output "radar_base_eks_dmz_node_group_name" {
  value = var.create_dmz_node_group ? element(split(":", module.eks.eks_managed_node_groups["dmz-${var.eks_cluster_name}"].node_group_id), 1) : null
}

output "radar_base_eks_worker_node_group_name" {
  value = element(split(":", module.eks.eks_managed_node_groups["worker-${var.eks_cluster_name}"].node_group_id), 1)
}

output "radar_base_vpc_public_subnets" {
  value = module.vpc.public_subnets
}

output "radar_base_default_storage_class" {
  value = var.defaut_storage_class
}

output "assume_eks_admins_role" {
  value = module.allow_assume_eks_admins_iam_policy.arn
}
