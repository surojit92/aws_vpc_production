resource "aws_vpc_dhcp_options" "dhcp" {
  domain_name                       = var.domain_name
  domain_name_servers               = var.domain_name_servers
  ntp_servers                       = var.ntp_servers
  netbios_name_servers              = var.netbios_name_servers
  tags                              = var.tags
}