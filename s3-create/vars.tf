variable "AWS_REGION" {
  default = "ap-south-1"
}
variable "AWS_ACCESS_KEY" {
}

variable "AWS_SECRET_KEY" {
}
variable "BUCKET_NAME" {
  type = "list"

  default = [
    {
      name = "BUCKET_NAME_1"
    },
    {
      name = "BUCKET_NAME_2"
    },
    {
      name = "BUCKET_NAME_3"
    },
  ]
}
