module "main-vpc" {
  source     = "../modules/vpc"
  ENV        = "prod"
  aws_region = var.aws_region
}

module "instances" {
  source         = "../modules/instances"
  ENV            = "prod"
  VPC_ID         = module.main-vpc.vpc_id
  PUBLIC_SUBNETS = module.main-vpc.public_subnets
}

