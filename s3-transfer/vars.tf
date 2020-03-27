variable "AWS_REGION" {
  default = "ap-south-1"
}
variable "AWS_ACCESS_KEY" {
}

variable "AWS_SECRET_KEY" {
}
variable "s3-source" {
  default = "s3://thisisatestbucketnamefordummypurposeonlyheyheyhey111"
}
variable "s3-dest" {
  default = "s3://jaibabaji"
}
variable "s3-source-region" {
  default = "us-east-1"
}
variable "s3-dest-region" {
  default = "ap-south-1"
}

