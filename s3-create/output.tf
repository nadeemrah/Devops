output "s3" {
  value       = aws_s3_bucket.b.*.id
  description = "The Following Bucket Name"
}
