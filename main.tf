provider "aws" {
  region = "eu-west-1"
}

resource "aws_s3_bucket" "storage_bucket" {
  bucket = "my-company-storage-bucket"
}

# https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/s3_bucket_lifecycle_configuration#noncurrent_version_expiration
resource "aws_s3_bucket_lifecycle_configuration" "example" {
  bucket = aws_s3_bucket.storage_bucket.id

  rule {
    id = "Allow small object transitions"
    status = "Enabled"
    transition {
      days          = 365
      storage_class = "GLACIER_IR"
    }
  }
}