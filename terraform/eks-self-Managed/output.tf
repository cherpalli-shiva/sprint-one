output "aws_account_id" {
    value = data.aws_caller_identity.current.account_id
}

output "aws_iam_user_arn" {
    value = data.aws_caller_identity.current.arn

}