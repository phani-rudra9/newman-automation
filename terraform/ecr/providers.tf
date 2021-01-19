provider "aws" {
  version = "~> 3.0"
  region  = "ap-south-1"
  shared_credentials_file = "~/.aws/credentials"
  profile = "vara"
}