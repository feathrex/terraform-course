terraform {
  backend "s3" {
    #bucket = "terraform-state-a3c731f"
    bucket = "rwf-terraform-state-a2b6219"
    key    = "terraform.tfstate"
    region = "us-west-2"
  }
}
