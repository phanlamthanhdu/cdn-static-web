output "s3_bucket_name" {
  value       = aws_s3_bucket.static_web.id
  description = "Name of S3"
}

output "cloudfront_domain" {
  value       = aws_cloudfront_distribution.s3_distribution.domain_name
  description = "Domain to access CloudFront(URL)"
}