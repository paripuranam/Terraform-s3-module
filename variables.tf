variable "Bucket" {
  type = string
  description = "Name of the S3 Bucket"
}

variable "Bucket_acl" {
  type = string
  default = "private"
  description = "Access Control List for the bucket"
}

variable "versioning" {
  type = bool
  default = false
  description = "Enable Versioning for the bucket"
}