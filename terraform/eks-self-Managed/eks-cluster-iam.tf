# IAM Role for EKS Cluster
resource "aws_iam_role" "eks_cluster_role" {
    name = "eks-cluster-role-petclinic"

    assume_role_policy = jsonencode({
        Version = "2012-10-17"
        Statement = [
            {
                Effect = "Allow",
                Principal = {
                    Service = "eks-amazonaws.com"
                },
                Action = "sts:AssumeRole"
            }
        ]
        
    })
}

resource "aws_iam_role_policy_attachment" "eks_cluster_policy" {
    role = aws_iam_role.eks_cluster_role.name
    policy_arn = "arn:aws:iam::aws:policy/AmazonEKSClusterPolicy"
}

# Output
output "eks_cluster_role" {
    value = aws_iam_role.eks_cluster_role.arn
}
