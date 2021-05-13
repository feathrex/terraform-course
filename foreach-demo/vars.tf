variable "aws_region" {
  type    = string
  default = "us-west-2"
}

variable "ports" {
  type        = list(number)
  description = "List of SG Port Numbers"
  default     = [22, 443, 80, 8080]
}
