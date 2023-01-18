resource "aws_vpc" "main" {
  cidr_block = var.vpc_cidr_block
  instance_tenancy = var.instance_tenancy

  tags = var.vpc_tags
}

resource "aws_default_security_group" "default" {
    vpc_id = aws_vpc.main.id
}