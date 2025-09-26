module "vpc" {
    source = "terraform-aws-modules/vpc/aws"

    name = "${var.project}-vpc"
    cidr = var.vpc_cidr

    azs = [var.az1, var.az2]
    public_subnets = [var.public_subnets_cidr]
    private_subnets = [var.private_subnets_cidr]

    enable_nat_gateway = true
    enable_vpn_gateway = true

    enable_dns_hostnames = true
    enable_dns_support = true
}