variable "aws_region" {
  type    = string
  default = "us-west-2"
}
variable "project_tags" {
  type = map(string)
  default = {
    Component   = "Frontend"
    Environment = "Production"
    ManagedBy   = "Terraform"
  }
}

