terraform {
  backend "s3" {
    bucket = "petclinic-terraform-state-88867"
    key = "prod/terraform.tfstate"
    region = "us-east-1"
    dynamodb_table = "petclinic-terraform-locks"
    encrypt = true
  }
}