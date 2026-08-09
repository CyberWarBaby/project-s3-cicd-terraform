# Fill in the bucket/table names that bootstrap/ created, then run:
#   terraform init
# Terraform will prompt to migrate any existing local state.

terraform {
  backend "s3" {
    #lock_table_name = "habeeb-project-s3-cicd-lock"
    bucket = "habeeb-project-s3-cicd"
    key            = "static-site/terraform.tfstate"
    region         = "eu-west-1"
    dynamodb_table = "habeeb-project-s3-cicd-lock"
    encrypt        = true
  }
}
