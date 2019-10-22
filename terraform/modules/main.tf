resource "aws_s3_bucket" "bucket" {
  bucket = var.name
}

resource "aws_s3_bucket" "bucket-2" {
  bucket = "${var.name}-2"
}

resource "aws_s3_bucket" "bucket-3" {
  bucket = "${var.name}-3"
}
