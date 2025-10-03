

output "cluster_iam_role_name" {
    value = module.eks.cluster_iam_role_name
}

output "node_iam_role_name" {
    value = module.eks.eks_managed_node_groups["default"].iam_role_name
}
