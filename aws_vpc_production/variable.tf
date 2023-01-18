variable "aws_access_key" {
  type          = string
  description   = "This is the AWS Access Key.It must be provided by the user."
}

variable "aws_secret_key" {
  type          = string
  description   = "This is the AWS Secret Access Key.It must be provided by the user."
}

variable "aws_region" {}
variable "vpc_subnet_config" {}
variable "subnet_config" {}