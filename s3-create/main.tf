resource "aws_s3_bucket" "b" {
  count  = "${length(var.BUCKET_NAME)}"
  bucket = "${lookup(var.BUCKET_NAME[count.index], "name")}"
  acl    = "private"

  tags = {
    Name        = "My bucket"
    Environment = "PROD"
  }
  versioning {
    enabled = true
  }
  server_side_encryption_configuration {
    rule {
      apply_server_side_encryption_by_default {
        sse_algorithm = "AES256"
      }
    }
  }
}
