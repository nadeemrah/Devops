resource "aws_s3_bucket_policy" "adding_bucket_policy" {
  bucket = "SOURCE_BUCKET"
  policy = <<POLICY
{
    "Version": "2012-10-17",
    "Statement": [
        {
            "Sid": "DelegateS3Access",
            "Effect": "Allow",
            "Principal": {
                "AWS": "arn:aws:iam::DESTINATION_ACCOUNT:root"
            },
            "Action": [
                "s3:ListBucket",
                "s3:GetObject"
            ],
            "Resource": [
                "arn:aws:s3:::SOURCE_BUCKET/*",
                "arn:aws:s3:::SOURCE_BUCKET"
            ]
        }
    ]
}
POLICY
}
