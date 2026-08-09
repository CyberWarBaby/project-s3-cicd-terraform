output "cloudfront_domain_name" {
  description = "Visit this URL to see the live site"
  value       = aws_cloudfront_distribution.site.domain_name
}

output "s3_bucket_name" {
  value = aws_s3_bucket.site.bucket
}
