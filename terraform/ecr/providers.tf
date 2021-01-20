provider "aws" {
  version = "~> 3.0"
  region  = "ap-south-1"
  shared_credentials_file = "/home/ubuntu/credentials"
  profile = "vara"
}
terraform {
  backend "s3" {
    bucket = "sampleaspdotnetcore"
    key    = "terra/terraform.tfstate"
    region = "ap-south-1"
  }
}