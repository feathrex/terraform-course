terraform {
  backend "s3" {
    bucket = "terraform-state-ve9e01tb"
    key    = "terraform.tfstate"
    region = "us-west-2"
  }
}
