output "s3_bucket_arn" {
  value       = aws_s3_bucket.b.arn
  description = "The ARN of the S3 bucket"
}

output "s3_bucket_id" {
  value       = aws_s3_bucket.b.id
  description = "The ID of the S3 bucket"
}

output "s3_bucket_domain_name" {
  value       = aws_s3_bucket.b.bucket_domain_name
  description = "The domain name of the S3 bucket"
}

output "aws_dynamodb_table_id" {
  value       = aws_dynamodb_table.terraform_locks.id
  description = "The ID of the DynamoDB table"
}