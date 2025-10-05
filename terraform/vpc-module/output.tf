output "vpc_id" {
    value = module.vpc.default_vpc_id
}

output "public_subnets" {
    value = module.vpc.public_subnets
}

output "private_subnets" {
    value = module.vpc.private_subnets
}

output "aws_security_group_id" {
    value = aws_security_group.web_sg.id
}