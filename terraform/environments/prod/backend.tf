terraform {
  backend "s3" {
    bucket         = "hypha-demo-002"
    key            = "dev/terraform.tfstate"
    region         = "us-east-1"
    dynamodb_table = "terraform-locks"
    encrypt        = true
  }
}