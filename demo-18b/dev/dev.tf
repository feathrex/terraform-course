module "main-vpc" {
  source     = "../modules/vpc"
  ENV        = "dev"
  aws_region = var.aws_region
}

module "instances" {
  source         = "../modules/instances"
  ENV            = "dev"
  VPC_ID         = module.main-vpc.vpc_id
  PUBLIC_SUBNETS = module.main-vpc.public_subnets
}

