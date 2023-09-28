resource "random_string" "s3_bucket_name" {
  length  = 32
  special = false
  lower   = true
  upper   = false
}

resource "aws_s3_bucket" "s3_bucket" {
  bucket = "${random_string.s3_bucket_name.result}-${var.environment}"

  tags = {
    Name        = "${random_string.s3_bucket_name.result}-${var.environment}"
    Created_by  = var.Created_By
    Environment = var.environment
    Owner       = var.owner
  }
}