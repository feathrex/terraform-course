variable "aws_region" {
  default = "us-west-2"
}

variable "path_to_private_key" {
  default = "mykey"
}

variable "path_to_public_key" {
  default = "mykey.pub"
}

variable "ecs_instance_type" {
  default = "t2.micro"
}

/*
variable "ecs_amis" {
  type = map(string)
  default = {
    us-east-1 = "ami-0c885adf297004c8c"
    us-west-1 = "ami-0f80465362e0ad5c6"
    us-west-2 = "ami-0d307da944dd6be62"
  }
}
*/

/*
data "aws_ami" "amazon_linux" {
  most_recent = true
  owners      = ["amazon"]

  filter {
    name   = "name"
    values = ["amzn2-ami-hvm-*-x86_64-gp2"]
  }
}
*/

data "aws_ami" "amazon_ecs_linux" {
  most_recent = true
  owners      = ["amazon"]

  filter {
    name   = "name"
    values = ["amzn2-ami-ecs-*-x86_64-*"]
  }
}


# Full List: http://docs.aws.amazon.com/AmazonECS/latest/developerguide/ecs-optimized_AMI.html
