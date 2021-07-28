# S3 bucket for website.
resource "aws_s3_bucket" "bucket" {
  bucket = var.website
  acl    = "public-read"
  website {
    index_document = "index.html"
  }
}

# Upload an object
resource "aws_s3_bucket_object" "index" {
  bucket = aws_s3_bucket.bucket.id
  acl    = "public-read"
  key = "index.html"
  content = "<h1>Hello, world</h1>"
  content_type = "text/html"
}

