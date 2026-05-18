resource "aws_s3_bucket" "example" {
  bucket = "duplt-testing-bucket"

  tags = {
    project = "cdn-static-web"
  }
}