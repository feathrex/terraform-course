provider "aws" {
  region = local.region
}

locals {
  region = "us-west-2"
}

################################################################################
# VPC Module
################################################################################

module "vpc" {
  source = "../../"

  create_vpc = false

  manage_default_vpc               = true
  default_vpc_name                 = "default"
  default_vpc_enable_dns_hostnames = true
}

