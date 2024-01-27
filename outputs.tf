output "s3_bucket_domain_name" {
  value = aws_s3_bucket.this.bucket_domain_name
  description = "The domain name of the s3-bucket"
}

output "s3_bucket_arn" {
  value = aws_s3_bucket.this.arn
  description = "The arn of the s3-bucket"
}

output "s3_bucket_id" {
  value = aws_s3_bucket.this.id
  description = "The id of the s3-bucket"
}