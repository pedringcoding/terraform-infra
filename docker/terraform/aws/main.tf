
# ------------------
# Resources define
# ------------------

## AWS S3 - Bucket
module "S3" {
  source = "./S3"
}

## CloudWatch - Billing costs insights
module "billing_alert" {
  source                    = "binbashar/cost-billing-alarm/aws"
  version                   = "1.0.12"
  aws_env                   = "dev"
  monthly_billing_threshold = 10
  currency                  = "EUR"
}