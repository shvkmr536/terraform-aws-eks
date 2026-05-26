terraform {
  backend "s3" {
    bucket         = "hypha-demo-002"
    key            = "${var.env}/terraform.tfstate"
    region         = var.region
    dynamodb_table = "terraform-locks"
    encrypt        = true
  }
}