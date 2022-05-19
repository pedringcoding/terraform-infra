output "lambda_bucket_name" {
  description = "Name of the bucket S3."
  value = aws_s3_bucket.bucket.id
}
output "lambda_bucket_region" {
  description = "Region of the bucket S3."
  value = aws_s3_bucket.bucket.region
}

output "lambda_bucket_access_key" {
  description = "Access key of the bucket S3."
  value = aws_iam_access_key.bucket_user.id
}
output "lambda_bucket_secret_key" {
  description = "Secret key of the bucket S3."
  value = aws_iam_access_key.bucket_user.secret
  sensitive = true
}

output "lambda_bucket_policy" {
  description = "Policy of the bucket S3."
  value = aws_iam_policy.s3_bucket_policy_app.arn
}
