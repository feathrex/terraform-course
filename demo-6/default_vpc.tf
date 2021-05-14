# these resources are added to provide the vpc_id and subnets to the consul module
# aws_default_* are resources that terraform doesn't creat, rather adopt
# See https://www.terraform.io/docs/providers/aws/r/default_vpc.html for more info

# default VPC
resource "aws_default_vpc" "default" {
  tags = {
    Name = "Default VPC"
  }
}

# default subnets
resource "aws_default_subnet" "default_az1" {
  availability_zone = "${var.aws_region}a"

  tags = {
    Name = "Default subnet for ${var.aws_region}a"
  }
}

resource "aws_default_subnet" "default_az2" {
  availability_zone = "${var.aws_region}b"

  tags = {
    Name = "Default subnet for ${var.aws_region}b"
  }
}

resource "aws_default_subnet" "default_az3" {
  availability_zone = "${var.aws_region}c"

  tags = {
    Name = "Default subnet for ${var.aws_region}c"
  }
}

