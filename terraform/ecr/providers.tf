provider "aws" {
  version = "~> 3.0"
  region  = "ap-south-1"
  access_key = "${access_key_id}"
  secret_key = "${secret_key_id}"
}