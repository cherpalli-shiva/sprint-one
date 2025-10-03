module "eks" {
    source = "terraform-aws-modules/eks/aws"
    version = "20.8.4"

    cluster_name = "petclinic-eks"
    cluster_version = "1.29"

    vpc_id = "vpc-1"  # Replace with your vpc id
    subnet_ids = ["subent1","subnet2"] # Replace with your subnets

    # Let module create roles automatically
    create_iam_role = true

    eks_managed_node_groups = {
        default = {
            min_size        = 2
            max_size        = 4
            desired_size    = 2
            instance_types  = ["t3.medium"]
            create_iam_role = true   # Node group role created by module
        }
    }
}