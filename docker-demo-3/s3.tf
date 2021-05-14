resource "aws_s3_bucket" "terraform-state" {
  bucket = "rwf-terraform-state-a2b6219"
  acl    = "private"

  tags = {
    Name = "Terraform state"
  }
}

