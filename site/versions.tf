terraform {
  required_version = ">= 1.5.0"

  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.0"
    }
  }
}

provider "aws" {
  region = var.aws_region
}

# ACM certs for CloudFront must be requested in us-east-1, regardless of
# where everything else lives.
provider "aws" {
  alias  = "us_east_1"
  region = "us-east-1"
}
