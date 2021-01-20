terraform {
  backend "s3" {
    bucket = "sampleaspdotnetcore"
    key    = "terra/terraform.tfstate"
    region = "ap-south-1"
  }
}