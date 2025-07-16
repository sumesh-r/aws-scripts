resource "aws_s3_bucket" "file_bucket" {
  bucket = var.s3_bucket_name

  tags = {
    Name        = var.s3_bucket_name,
    Terraform   = "true"
  }
}

resource "aws_s3_bucket_public_access_block" "file_bucket" {
  bucket = aws_s3_bucket.file_bucket.id

  block_public_acls       = true
  block_public_policy     = true
  ignore_public_acls      = true
  restrict_public_buckets = true
}
