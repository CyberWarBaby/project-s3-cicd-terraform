variable "aws_region" {
  type    = string
  default = "eu-west-1"
}

variable "project_name" {
  description = "Used to name the site bucket and tag resources"
  type        = string
  default     = "my-static-site"
}

variable "site_bucket_name" {
  description = "Globally unique S3 bucket name for the site content"
  type        = string
}
