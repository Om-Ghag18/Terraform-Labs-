terraform {
  backend "s3" {
    bucket  = "parkingbucket2002"
    key     = "project1/terraform.tfstate"
    region  = "ap-south-1"
    encrypt = true
    # dynamodb_table = "my-terraform-lock-table"
  }
}
