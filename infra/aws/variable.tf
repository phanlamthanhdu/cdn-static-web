variable "aws_region" {
  type        = string
  default     = "ap-southeast-1" # Singapore, thay đổi tùy bạn
  description = "AWS Region"
}

variable "bucket_name" {
  type        = string
  description = "Tên duy nhất cho S3 bucket (Ví dụ: my-super-cool-web-12345)"
}

variable "domain_name" {
  type        = string
  default     = ""
  description = "Tên miền tùy chỉnh nếu có (Ví dụ: example.com). Để trống nếu dùng domain mặc định của CloudFront"
}

# variable "s3" {
#   type = object({
#     name          = string
#     force_destroy = optional(bool, false)

#     access_rules = object({
#       block_public_acls       = optional(bool, false)
#       block_public_policy     = optional(bool, false)
#       ignore_public_acls      = optional(bool, false)
#       restrict_public_buckets = optional(bool, false)
#     })


#   })
# }

# variable "iam_policy" {
#   type = object({
#     actions    = optional(list(string), ["s3:GetObject"])             # A list of actions that CloudFront is allowed to do on S3
#     principals = optional(list(string), ["cloudfront.amazonaws.com"]) # A list of principals for CloudFront in S3 policy
#     condition = optional(object(                                      # Validation condition of policy to limit access from CloudFront
#       {
#         test     = string
#         variable = string
#       }),
#       {
#         test     = "StringEquals"
#         variable = "AWS:SourceArn"
#       }
#     )
#   })
# }

# variable "cloudfront" {

# }
