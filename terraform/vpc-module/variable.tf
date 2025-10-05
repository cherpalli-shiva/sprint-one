variable "aws_region" {
  default = "us-east-1"
}

variable "project" {
  default = "devops-sprint"
}

variable "vpc_cidr" {
  default = "10.0.0.0/16"
}

variable "public_subnets_cidr" {
    default = "10.0.1.0/24"
  
}

variable "private_subnets_cidr" {
    default = "10.0.2.0/24"
}

variable "az1" {    
    default = "us-east-1a"
}

variable "az2" {   
    default = "us-east-1b" 
}

