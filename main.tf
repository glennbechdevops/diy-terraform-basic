provider "aws" {
  region = "eu-west-1"
}

resource "aws_s3_bucket" "storage_bucket" {
  bucket = "my-company-storage-bucket"
}

resource "aws_s3_bucket_lifecycle_rule" "storage_bucket_lifecycle" {
  bucket = aws_s3_bucket.storage_bucket.id
  id      = "archive_rule"
  enabled = true

  transition {
    days          = 90
    storage_class = "GLACIER"
  }

  expiration {
    days = 365
  }
}