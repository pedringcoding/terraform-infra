# --------------------------------
# B U C K E T S
# --------------------------------
resource "aws_s3_bucket" "bucket" {
  bucket = "app-lambda-bucket-dev"
  force_destroy = true
}

# --------------------------------
# U S E R S
# --------------------------------
resource "aws_iam_user" "bucket_user" {
  name = "bucket-user"
  force_destroy = true
}

resource "aws_iam_access_key" "bucket_user" {
  user = aws_iam_user.bucket_user.name
}

resource "aws_iam_policy_attachment" "lambda_bucket_policy" {
  users = [ aws_iam_user.bucket_user.name ]
  name = "s3-bucket-policy-iam-app"
  policy_arn = aws_iam_policy.s3_bucket_policy_app.arn
}

# --------------------------------
# P O L I C I E S
# --------------------------------
data "aws_iam_policy_document" "bucket_policy_app" {
    statement {
        sid = "AllowFullAccess"
        effect = "Allow"
        actions = [
            "s3:*"
        ]
        resources = [
            "arn:aws:s3:::${aws_s3_bucket.bucket.id}"
        ]
    }
}

resource "aws_iam_policy" "s3_bucket_policy_app" {
    name = "s3-bucket-policy-iam-app"
    path = "/"
    description = "Allow full access to S3 bucket"
    policy = data.aws_iam_policy_document.bucket_policy_app.json
}