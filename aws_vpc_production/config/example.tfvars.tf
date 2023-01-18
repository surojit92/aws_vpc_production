#AWS User access key, secret access key for authentication
aws_region      = "us-east-2"
aws_access_key  = ""
aws_secret_key  = ""

vpc_subnet_config = {
    vpc1 = {
        vpc_cidr_block          = "10.0.0.0/16"
        instance_tenancy        = "default"
        vpc_tags = {
            Name        = ""
            Contact     = ""
            Project     = "" 
        }
    }
    vpc2 = {
        vpc_cidr_block          = "20.0.0.0/16"
        instance_tenancy        = "default"
        vpc_tags = {
            Name        = ""
            Contact     = ""
            Project     = "" 
        }
    }
}
subent_config ={
    "subnet1" = {
        vpc_name                 = "vpc1"
        subnet_cidr              = "10.0.0.0/24"
        availability_zone        = "us-east-2a"
        subnet_tags = {
            Name        = ""
            Contact     = ""
            Project     = ""
        }
    }
    "subnet2" = {
        vpc_name                 = "vpc2"
        subnet_cidr              = "20.0.0.0/24"
        availability_zone        = "us-east-2a"
        subnet_tags = {
            Name        = ""
            Contact     = ""
            Project     = ""
        }
    }
}
internet_gateway_configuration = {
    "IGW1" = {
        vpc_name                 = "vpc1"
        route_table_name         = "RT1"
        tags = {
            Name        = ""
            Contact     = ""
            Project     = ""
        }
    }
    "IGW2" = {
        vpc_name                 = "vpc2"
        route_table_name         = "RT2"
        tags = {
            Name        = ""
            Contact     = ""
            Project     = ""
        }
    }
}
route_table_configuration = {
    "RT1" = {
        vpc_name                = "vpc1"
        tags = {
            Name        = ""
            Contact     = ""
            Project     = ""
        }
    }
    "RT2" = {
        vpc_name                = "vpc1"
        tags = {
            Name        = ""
            Contact     = ""
            Project     = ""
        }
    }
}
subnet_list = {
    0 = {
        subnet_name = "subnet1"
        route_table_name = "RT1"
    }
    1 = {
        subnet_name = "subnet2"
        route_table_name = "RT2"
    }
}
#DHCP creation input
dhcp_creation_config = {
    "dhcp1" = {
        domain_name             = "ec2.internal"
        domain_name_servers     = ["IP of DNS servers",""]
        ntp_servers             = []
        netbios_name_servers    = []
        tags = {
            Name        = ""
            Contact     = ""
            Project     = ""
        }
    }
    "dhcp2" = {
        domain_name             = "ec2.internal"
        domain_name_servers     = ["IP of DNS servers",""]
        ntp_servers             = []
        netbios_name_servers    = []
        tags = {
            Name        = ""
            Contact     = ""
            Project     = ""
        }
    }
}
dhcp_attach_config = {
    "dhcp1" = {
        vpc_name    = "vpc1"
        dchp_name   = "dhcp1"
    }
    "dhcp2" = {
        vpc_name    = "vpc2"
        dchp_name   = "dhcp2"
    }
}
vpn_gateways = { # all Gateway configuration should be define within this variable
    vpn_gateway_1 = { # First gateway configuration
      # VPC should be present in same region where VPN created
        vpc_name = "vpc1"  # VPC name can be null if don't want to attach to vpn gateway
        tags = {
            Name        = ""
            Contact     = ""
            Project     = ""
        }
    }
    vpn_gateway_1 = { # Second gateway configuration
        vpc_name = "vpc2"  # VPC name can be null if don't want to attach to vpn gateway
        tags = {
            Name        = ""
            Contact     = ""
            Project     = ""
        }
    }
}
flow_logs = {
    "vpc_flog_logs_test" = {
        vpc_name            = "vpc1"
        group_name          = ""
        policy              = ""
        traffic             = "ALL"
        role_name           = ""
        tags = {
            Name        = ""
            Contact     = ""
            Project     = ""
        }
    }
    "vpc_flog_logs_test1" = {
        vpc_name            = "vpc2"
        group_name          = ""
        policy              = ""
        traffic             = "ALL"
        role_name           = ""
        tags = {
            Name        = ""
            Contact     = ""
            Project     = ""
        }
    }
}