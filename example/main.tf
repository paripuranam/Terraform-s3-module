provider "aws" {
  region = "us-east-1"
}

module "s3_bucket" {
  source      = "github.com/paripuranam/Terraform-s3-module"
  Bucket      = "Unique bucket name"
  Bucket_acl  = "public-read"
  versioning  = true
}
