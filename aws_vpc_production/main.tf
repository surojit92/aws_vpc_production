module "aws_vpc" {
    source                  = ".modules/aws_vpc"

    for_each                = var.vpc_subnet_config

    vpc_cidr_block          = each.value.vpc_cidr_block
    instance_tenancy        = each.value.instance_tenancy
    vpc_tags                = each.value.vpc_tags
  
}

module "aws_subnets" {
    source                  = "./modules/aws_subnets"

    for_each                = var.subnet_config

    vpc_id                  = module.aws_vpc[each.value.vpc_name].vpc_id
    cidr_block              = each.value.subnet_cidr
    subnet_tags             = each.value.subnet_tags
}