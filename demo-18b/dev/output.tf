output "vpc_id" {
  description = "The ID of the VPC"
  value       = module.main-vpc.vpc_id
}

output "private_subnets" {
  description = "List of IDs of private subnets"
  value       = module.main-vpc.private_subnets
}

output "public_subnets" {
  description = "List of IDs of public subnets"
  value       = module.main-vpc.public_subnets
}

/*
output "ec2_instance" {
  description = "Display Public IP of EC2 Instance"
  value = module.instances.aws_instance.instance.public_ip
  #value = module.instances.public_ip
}
*/
