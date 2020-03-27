resource "null_resource" "transfer" {

  provisioner "local-exec" {
    command = "aws s3 sync $source $dest --source-region $sourceregion --region $destregion"

    environment = {
      source       = "s3://SOURCE_BUCKET"
      dest         = "s3://DESTINATION_BUCKET"
      sourceregion = "us-east-1"
      destregion   = "ap-south-1"
    }
  }
}
