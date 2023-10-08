# Resources

resource "aws_s3_bucket" "s3_bucket" {
  bucket = "${var.owner}-${var.project_name}-${var.environment}-webhosting"

  tags = {
    Name        = "${var.owner}-${var.project_name}-${var.environment}-webhosting"
    Created_by  = var.Created_By
    Environment = var.environment
    Owner       = var.owner
  }
}