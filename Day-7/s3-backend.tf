# S3 bucket for Terraform state

resource "aws_s3_bucket" "tf_state" {
    bucket = "petclinic-terraform-state-88867"
    force_destroy = true

    tags = {
        Name = "petclinic-terraform-state"
        Environment ="prod"
    }
}

# Enable versioning 
resource "aws_s3_bucket_versioning" "tf_state_versioning" {
    bucket = aws_s3_bucket.tf_state.id
    versioning_configuration {
      status = "Enabled"
    }
}

# DynamoDB

resource "aws_dynamodb_table" "tf_lock" {
    name = "petclinic-terraform-locks"
    billing_mode = "PAY_PER_REQUEST"
    hash_key = "LockID"

    attribute {
      name = "LockID"
      type = "S"    
    }

    tags = {
      Name = "petclinic-terraform-locks"
      Environment = aws_s3_bucket.tf_state.bucket
    }

}

output "aws_s3_bucket" {
    value = aws_s3_bucket.tf_state.bucket
}

output "aws_dynamodb_table" {
    value = aws_dynamodb_table.tf_lock.name
}