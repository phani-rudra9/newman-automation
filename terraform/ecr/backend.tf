terraform {
  backend "remote" {
    hostname = "app.terraform.io"
    organization = "phani-terra"
    workspaces {
      name = "my-app-sample"
    }
  }
}