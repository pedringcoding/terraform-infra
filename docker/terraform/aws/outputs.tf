output "S3_module_output_lambda_bucket_name" {
  description = "Output for Name of the bucket S3."
  value       = module.S3.lambda_bucket_name
}
output "S3_module_output_lambda_bucket_access_key" {
  description = "Output for Access key of the bucket S3."
  value       = module.S3.lambda_bucket_access_key
}
output "S3_module_output_lambda_bucket_secret_key" {
  description = "Output for Secret key of the bucket S3."
  value       = module.S3.lambda_bucket_secret_key
  sensitive   = true
}

output "billing_alert_module_output_sns_topic_arn" {
  description = "value of the SNS topic ARN"
  value       = module.billing_alert.sns_topic_arn
}
