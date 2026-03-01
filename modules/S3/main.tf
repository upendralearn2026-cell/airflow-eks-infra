resource "aws_s3_bucket" "dags" {
  bucket = var.bucket_name
}

resource "aws_s3_bucket_versioning" "versioning" {
  bucket = aws_s3_bucket.dags.id

  versioning_configuration {
    status = "Enabled"
  }
}