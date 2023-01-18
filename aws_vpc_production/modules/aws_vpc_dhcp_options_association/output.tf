output "dhcp_id" {
    value = aws_vpc_dhcp_options_association.dns_resolver.id
}