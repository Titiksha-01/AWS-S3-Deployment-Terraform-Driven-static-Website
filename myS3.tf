provider "aws" {
  region = "us-east-1"
}

resource "aws_s3_bucket" "my-terrapro-bucket" {
  bucket = "my-terrapro-bucket"
}

resource "aws_s3_bucket_ownership_controls" "my-bucket-owner" {
  bucket = aws_s3_bucket.my-terrapro-bucket.id
  rule {
    object_ownership = "BucketOwnerPreferred"
  }
}

resource "aws_s3_bucket_public_access_block" "my-bucket-public-access-rule" {
  bucket = aws_s3_bucket.my-terrapro-bucket.id

  block_public_acls       = false
  block_public_policy     = false
  ignore_public_acls      = false
  restrict_public_buckets = false
}

resource "aws_s3_bucket_acl" "my-bucket-acl" {
  depends_on = [
    aws_s3_bucket_ownership_controls.my-bucket-owner,
    aws_s3_bucket_public_access_block.my-bucket-public-access-rule,
  ]

  bucket = aws_s3_bucket.my-terrapro-bucket.id
  acl    = "public-read"
}

resource "aws_s3_object" "my-bucket-object" {
  bucket       = aws_s3_bucket.my-terrapro-bucket.id
  key          = "index.html"
  source       = "index.html"
  acl          = "public-read"
  content_type = "text/html"
}

resource "aws_s3_object" "my-bucket-object2" {
  bucket       = aws_s3_bucket.my-terrapro-bucket.id
  key          = "Boston.jpg"
  source       = "Boston.jpg"
  acl          = "public-read"
}

resource "aws_s3_bucket_website_configuration" "my-bucket-website" {
  bucket = aws_s3_bucket.my-terrapro-bucket.id

  index_document {
    suffix = "index.html"
  }

  depends_on = [aws_s3_bucket_acl.my-bucket-acl]
}