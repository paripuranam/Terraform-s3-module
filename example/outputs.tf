output "dns" {
    value = module.s3_bucket.s3_bucket_domain_name
    description = "The dns of the s3 bucket"
}

output "arn" {
  value = module.s3_bucket.s3_bucket_arn
  description = "The arn of the s3 bucket"
}

output "id" {
  value = module.s3_bucket.s3_bucket_id
  description = "The id of the s3 bucket"
}