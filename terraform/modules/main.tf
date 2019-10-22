resource "aws_s3_bucket" "bucket" {
  bucket = var.name
}

resource "aws_s3_bucket" "bucket-2" {
  bucket = "${var.name}-2"
}
