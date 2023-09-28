output "random_s3_bucket_name" {
  value = random_string.s3_bucket_name.result
}

output "s3_bucket_arn" {
  value = aws_s3_bucket.s3_bucket.arn
}

# output "output_name" {
#  value = output_value
# }