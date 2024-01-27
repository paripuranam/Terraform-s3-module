resource "aws_s3_bucket" "this" {
  bucket = var.Bucket
  tags = {
    Name = var.Bucket
    ModuleCreated = true
  }
}

resource "aws_s3_bucket_public_access_block" "this" {
  bucket = aws_s3_bucket.this.id
  count = var.Bucket_acl == "public-read" || var.Bucket_acl == "public-read-write" ? 1 : 0
  
  block_public_acls       = false
  block_public_policy     = false
  ignore_public_acls      = false
  restrict_public_buckets = false
}

resource "aws_s3_bucket_acl" "this" {
  bucket = aws_s3_bucket.this.id
  acl = var.Bucket_acl
}

resource "aws_s3_bucket_versioning" "this" {
  bucket = aws_s3_bucket.this.id
  versioning_configuration {
    status = var.versioning ? "Enabled" : "Disabled"
  }
}

resource "aws_s3_bucket_ownership_controls" "this" {
  bucket = aws_s3_bucket.this.id
  rule {
    object_ownership = "Bucket_Owner_Preferred"
  }
}
