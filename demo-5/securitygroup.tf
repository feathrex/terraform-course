data "aws_ip_ranges" "european_ec2" {
  regions  = ["us-west-2", "us-west-11"]
  services = ["ec2"]
}

resource "aws_security_group" "from_west_coast" {
  name = "from_europe"

  ingress {
    from_port   = "443"
    to_port     = "443"
    protocol    = "tcp"
    cidr_blocks = slice(data.aws_ip_ranges.european_ec2.cidr_blocks, 0, 50)
  }
  tags = {
    CreateDate = data.aws_ip_ranges.european_ec2.create_date
    SyncToken  = data.aws_ip_ranges.european_ec2.sync_token
  }
}

