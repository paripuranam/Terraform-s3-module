provider "aws" {
  region = "us-east-1"
}

module "s3_bucket" {
  source      = "github.com/paripuranam/Terraform-s3-module"
  Bucket = "module-bucket-3124211"
  Bucket_acl = "public-read"
  versioning = false
}